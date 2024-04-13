<%-*
async function getCodeNoteConfig(lang, src_file) {
  
  const defaultFrontmatter = tp.file.include("[[Template Frontmatter]]");

  if (lang === "PowerShell") {
    const codeFolder = "03-AREAS/Code/PowerShell";
    const codeExt = "ps1";
    const codeSrcFolder = codeFolder + '/src';
    const codeSrcPath = codeSrcFolder + '/' + src_file + '.' + codeExt;
    const codeSrcFile = src_file + codeExt;

    const codeBlock = "'''powershell\nPATH: " + '"' + codeSrcPath '"\nTITLE: "' + codeSrcFile + "\n```";
  }

  let config = {
    lang: lang,
    codeBlock: codeBlock
  };

  return config  
}

let config = {
  lang: {
    prompt: true,
    display: "What is the Code Language?",
    value: ["Bash", "PowerShell", "Registry"],
  },
  path: {
    prompt: true,
    display: "Please indicate the path",
    value: "Folder",
  },
  filename: {
    prompt: true,
    display: "Please indicate the file name.",
    value: "A new note",
  },
  srcFile: {
    prompt: true,
    display: "Enter the source code file name",
    value: "ScriptName"
  }
};

try {
  await tp.user.newNote(tp, config)
  new Notice(`Created note '${config.filename.value}'.`)
} catch {
  new Notice(error.message)
  return
} 
_%>