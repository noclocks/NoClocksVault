- `scripts/publish/config.ts`:

```typescript
export default {
  /** A list of glob patterns to define the files to include in the package */
  includeFiles: [
    // Theme lib
    'lib/theme/**/*.(js|jsx|ts|tsx)',
    'lib/styled*',
    'lib/date-utils*',
    // Avatar
    'components/Avatar*',
    // Typography
    'components/Text..*',
    // Toasts
    'components/Toast*',
    // Layout
    'components/Grid..*',
    'components/Container',
    // Misc helpers
    'components/Currency.*',
    // Filters
    'components/filters/*',
    // Loading
    'components/Loading*',
    // Styled components
    'components/StyledAmountPicker.*',
    'components/StyledButtonSet.*',
    'components/StyledButton.*',
    'components/StyledCard.*',
    'components/StyledCarousel.*',
    'components/StyledCheckbox.*',
    // 'components/StyledCollectiveCard.*', // Depends on Link
    'components/StyledDropdown.*',
    // 'components/StyledDropzone.*', // Not included as it contains API calls. Should be separated in two components, a "dumb" one and a "plugged" one
    'components/StyledFilters.*',
    'components/StyledHr.*',
    'components/StyledInputAmount.*',
    'components/StyledInputField.*',
    // 'components/StyledInputFormikField.*', // To enable, add formik to peerDependencies
    'components/StyledInputGroup.*',
    'components/StyledInputLocation.*',
    'components/StyledInputMask.*',
    'components/StyledInputPercentage.*',
    'components/StyledInputSlider.*',
    'components/EditTags.*',
    'components/StyledInput.*',
    'components/StyledKeyframes.*',
    'components/StyledLinkButton.*',
    'components/StyledLink.*',
    // 'components/StyledMembershipCard.*', // Contains a reference to StyledCollectiveCard, and thus to Link
    // 'components/StyledModal.*', // Contains a reference to Router for `warnIfUnsavedChanges`
    'components/StyledMultiEmailInput.*',
    'components/StyledProgressBar.*',
    'components/StyledRadioList.*',
    'components/StyledRoundButton.*',
    'components/StyledSelectCreatable.*',
    'components/StyledSelectFilter.*',
    'components/StyledSelect.*',
    'components/StyledSpinner.*',
    'components/StyledTag.*',
    'components/StyledTextarea.*',
    'components/StyledTooltip.*',
  ],
  /** Will be marked as peerDependencies. Remember to update scripts/publish-components/static/README.md. */
  peerDependencies: ['react', 'react-dom', 'styled-components'],
};
```

- `scripts/publish/helpers.ts`:

```typescript
import readline from 'readline';

import { pickBy } from 'lodash';

/**
 * A wrapper around `pickBy` that allows to pass a list of either:
 * - strings: the keys to pick
 * - regexes: the keys to pick if they match the regex
 */
export const pickByPatterns = (object, patterns) => {
  return pickBy(object, (_, name) => {
    return patterns.some(pattern => {
      if (typeof pattern === 'string') {
        return name === pattern;
      } else {
        return pattern.test(name);
      }
    });
  });
};

export const confirm = question => {
  const rl = readline.createInterface({ input: process.stdin, output: process.stdout });

  return new Promise(resolve => {
    rl.question(`${question}\n> `, input => {
      if (['y', 'yes', 'sure', 'ok'].includes(input.toLowerCase())) {
        resolve(true);
      } else {
        rl.close();
        resolve(false);
      }
    });
  });
};
```

- `scripts/publish/index.ts`:

```typescript
/* eslint-disable no-process-exit */
/* eslint-disable no-console */

import { execSync } from 'child_process';
import fs from 'fs';
import path from 'path';

import RollupPluginBabel from '@rollup/plugin-babel';
import RollupPluginCommonJS from '@rollup/plugin-commonjs';
import RollupPluginImages from '@rollup/plugin-image';
import RollupPluginJSON from '@rollup/plugin-json';
import RollupPluginTypescript from '@rollup/plugin-typescript';
import { Command } from 'commander';
import fsExtra from 'fs-extra';
import { glob } from 'glob';
import { flatten, omit, pick } from 'lodash';
import { rollup } from 'rollup';

import config from './config';
import { confirm, pickByPatterns } from './helpers';

// Define program options
const program = new Command()
  .description('Helper publish Frontend components to the NPM registry')
  .argument('[version]', 'Version number to publish')
  .option('--build-only', 'If set, the package will be build but not published')
  .parse();

// Load some content
const options = program.opts();
const tmpDir = path.join(__dirname, '.tmp');
const staticFilesDir = path.join(__dirname, 'static');
const projectRoot = path.join(__dirname, '../..');
const projectNodeModules = path.join(projectRoot, 'node_modules');
const basePackageJSON = require(path.join(projectRoot, 'package.json'));
const extensions = ['.js', '.jsx', '.ts', '.tsx'];

const main = async () => {
  // Prepare directory structure
  fs.rmSync(tmpDir, { recursive: true, force: true });
  fs.mkdirSync(tmpDir);

  // ==== 2. Copy all files to publish ====
  console.log('Copying files to tmp folder...');

  // Static files
  glob.sync(`${staticFilesDir}/*`, { dot: true }).forEach(sourcePath => {
    const targetPath = sourcePath.replace(staticFilesDir, tmpDir);
    fsExtra.copySync(sourcePath, targetPath);
  });

  // ==== 3. Build ====
  console.log('Building...');
  const filesToInclude = flatten(
    config.includeFiles.map(pattern => glob.sync(pattern, { cwd: projectRoot, absolute: true })),
  );

  // Filter external dependencies, and build a map of external dependencies
  const peerDependencies = pickByPatterns(basePackageJSON.dependencies, config.peerDependencies);
  const usedDependencies = new Set<string>();
  const filterExternal = (dependency, parent) => {
    if (dependency.startsWith(projectNodeModules) || parent?.startsWith(projectNodeModules)) {
      const dependencyRelativeParts = dependency.replace(projectNodeModules, '').split(path.sep);
      const isOrgPackage = dependencyRelativeParts[1][0] === '@';
      const dependencyName = isOrgPackage ? dependencyRelativeParts.slice(1, 3).join('/') : dependencyRelativeParts[1];
      usedDependencies.add(dependencyName);
      return true;
    } else if (dependency[0] !== '/' && dependency[0] !== '.') {
      const isOrgPackage = dependency[0] === '@';
      const dependencyRelativeParts = dependency.split(path.sep);
      const dependencyName = isOrgPackage ? dependencyRelativeParts.slice(0, 2).join('/') : dependencyRelativeParts[0];
      usedDependencies.add(dependencyName);
      return true;
    } else {
      return false;
    }
  };

  const bundle = await rollup({
    watch: { chokidar: { cwd: projectRoot } },
    input: filesToInclude,
    external: filterExternal,
    plugins: [
      // RollupPluginResolve({ extensions }),
      RollupPluginCommonJS({ include: /node_modules/ }),
      RollupPluginJSON(),
      RollupPluginImages(), // Not ideal as images will be base-64 encoded and thus bigger than optimized PNG
      RollupPluginTypescript({
        include: filesToInclude,
        noForceEmit: true,
        compilerOptions: {
          declaration: true,
          noEmit: false,
          emitDeclarationOnly: true,
          declarationDir: tmpDir,
          outDir: tmpDir,
          sourceMap: false,
          allowJs: false,
          jsx: 'react',
        },
      }),
      RollupPluginBabel({
        extensions,
        babelHelpers: 'runtime',
        exclude: 'node_modules/**',
      }),
    ],
  });

  // Write files to disk
  const bundleOutputOptions = { dir: tmpDir, preserveModules: true };
  await bundle.write({ ...bundleOutputOptions, format: 'esm' });

  await bundle.close();

  // ==== 1. Generate `package.json` ====
  const version = program.args[0];
  console.log('Generating `package.json`...');
  const packageJSON = {
    name: '@opencollective/frontend-components',
    version: version || 'Unpublished',
    private: false,
    repository: basePackageJSON.repository,
    engines: basePackageJSON.engines,
    type: 'module',
    dependencies: omit(
      pick(basePackageJSON.dependencies, Array.from(usedDependencies).sort()),
      Object.keys(peerDependencies),
    ),
    peerDependencies,
    devDependencies: peerDependencies,
  };

  // Output package.json
  const outputFile = path.join(tmpDir, 'package.json');
  fs.writeFileSync(outputFile, JSON.stringify(packageJSON, null, 2));

  // ==== 4. Publish ====
  if (!options['buildOnly']) {
    if (!version) {
      throw new Error('You must specify a version number to publish the components');
    }

    // Dry run
    execSync(`npm publish ${tmpDir} --access public --dry-run`, { stdio: 'inherit' });

    // Actually publish
    if (await confirm('You are about to publish the components listed above. Are you sure you want to continue?')) {
      execSync(`npm publish ${tmpDir} --access public`, { stdio: 'inherit' });
    }
  }
};

main()
  .then(() => {
    if (!options['buildOnly']) {
      fs.rmSync(tmpDir, { recursive: true, force: true });
    }
    process.exit(0);
  })
  .catch(e => {
    console.error(e);
    fs.rmSync(tmpDir, { recursive: true, force: true });
    process.exit(1);
  });
```