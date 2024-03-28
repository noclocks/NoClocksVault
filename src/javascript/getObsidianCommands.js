class CommandTable {
  constructor(app, vault) {
    this.app = app;
    this.vault = vault;
  }

  async generateTable(element) {
    const getNestedObject = (nestedObj, pathArr) => {
      return pathArr.reduce(
        (obj, key) => (obj && obj[key] !== "undefined" ? obj[key] : undefined),
        nestedObj
      );
    };

    const getHotkey = (arr) => {
      return arr.hotkeys
        ? [
            [getNestedObject(arr.hotkeys, [0, "modifiers"])],
            [getNestedObject(arr.hotkeys, [0, "key"])],
          ]
            .flat(2)
            .join("+")
            .replace("Mod", "Ctrl")
        : "–";
    };

    const cmds = await this.app.vault
      .getMarkdownFiles()
      .then((files) => {
        return files.flatMap((file) => {
          const frontmatter =
            this.app.metadataCache.getFileCache(file).frontmatter;
          if (frontmatter && frontmatter.commands) {
            return Object.entries(frontmatter.commands).map(([id, command]) => {
              return [id, command.name, getHotkey(command)];
            });
          } else {
            return [];
          }
        });
      })
      .sort((a, b) => a[0].localeCompare(b[0]));

    const tableHtml = `
        <p>${cmds.length} commands currently enabled.</p>
        <table>
          <thead>
            <tr>
              <th>Command ID</th>
              <th>Name in current locale</th>
              <th>Hotkeys</th>
            </tr>
          </thead>
          <tbody>
            ${cmds
              .map(
                (cmd) => `
              <tr>
                <td>${cmd[0]}</td>
                <td>${cmd[1]}</td>
                <td>${cmd[2]}</td>
              </tr>
            `
              )
              .join("")}
          </tbody>
        </table>
      `;

    element.innerHTML = tableHtml;
  }
}
