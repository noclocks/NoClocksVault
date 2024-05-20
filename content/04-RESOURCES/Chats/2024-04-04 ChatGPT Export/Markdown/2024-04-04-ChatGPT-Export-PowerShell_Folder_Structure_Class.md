---
title: PowerShell Folder Structure Class
source: https://chat.openai.com/c/f0e39599-cb91-4887-b191-d5b062e82383
---

# PowerShell Folder Structure Class

#### You:
<time datetime="2023-11-05T17:17:35.364Z" title="11/5/2023, 12:17:35 PM">12:17 PM</time>

Design a powershell class representing a particular folder or zip archive structure that contains the required files: CSV, JSON, YAML, SQL, and XML

#### ChatGPT:
<time datetime="2023-11-05T17:17:41.667Z" title="11/5/2023, 12:17:41 PM">12:17 PM</time>

Certainly, designing a PowerShell class to represent a folder or zip archive structure with various file types like CSV, JSON, YAML, SQL, and XML can be a useful task. Below is a PowerShell class that represents such a structure:

```powershell
class FileStructure {
    [string]$Name
    [string]$Path
    [string[]]$CSVFiles
    [string[]]$JSONFiles
    [string[]]$YAMLFiles
    [string[]]$SQLFiles
    [string[]]$XMLFiles
    
    FileStructure([string]$name, [string]$path) {
        $this.Name = $name
        $this.Path = $path
        $this.CSVFiles = @()
        $this.JSONFiles = @()
        $this.YAMLFiles = @()
        $this.SQLFiles = @()
        $this.XMLFiles = @()
    }

    [void] AddFile([string]$fileName) {
        $fileExtension = [System.IO.Path]::GetExtension($fileName).ToLower()
        switch ($fileExtension) {
            '.csv' { $this.CSVFiles += $fileName }
            '.json' { $this.JSONFiles += $fileName }
            '.yaml' { $this.YAMLFiles += $fileName }
            '.sql' { $this.SQLFiles += $fileName }
            '.xml' { $this.XMLFiles += $fileName }
            default { Write-Host "Unsupported file type: $fileExtension" }
        }
    }

    [void] ListFiles() {
        Write-Host "Files in $($this.Name):"
        Write-Host "CSV Files: $($this.CSVFiles -join ', ')"
        Write-Host "JSON Files: $($this.JSONFiles -join ', ')"
        Write-Host "YAML Files: $($this.YAMLFiles -join ', ')"
        Write-Host "SQL Files: $($this.SQLFiles -join ', ')"
        Write-Host "XML Files: $($this.XMLFiles -join ', ')"
    }
}

# Example usage:
$folderStructure = [FileStructure]::new("MyFolder", "C:\Path\To\Folder")
$folderStructure.AddFile("file1.csv")
$folderStructure.AddFile("file2.json")
$folderStructure.AddFile("file3.yaml")
$folderStructure.ListFiles()
```

This class, `FileStructure`, stores information about the folder or archive, and you can add files to it using the `AddFile` method based on their file extensions. Finally, you can list the files using the `ListFiles` method. This structure allows you to organize and manage files of different types within a folder or archive effectively.


#### You:
<time datetime="2023-11-05T17:19:07.305Z" title="11/5/2023, 12:19:07 PM">12:19 PM</time>

Make the class inherit from the default dotnet class for a folder 

#### ChatGPT:
<time datetime="2023-11-05T17:19:13.813Z" title="11/5/2023, 12:19:13 PM">12:19 PM</time>

Certainly, you can make the `FileStructure` class inherit from the default .NET class for a folder, which is `System.IO.DirectoryInfo`. Here's the updated class:

```powershell
class FileStructure : System.IO.DirectoryInfo {
    [string[]]$CSVFiles
    [string[]]$JSONFiles
    [string[]]$YAMLFiles
    [string[]]$SQLFiles
    [string[]]$XMLFiles

    FileStructure([string]$path) : base($path) {
        $this.CSVFiles = @()
        $this.JSONFiles = @()
        $this.YAMLFiles = @()
        $this.SQLFiles = @()
        $this.XMLFiles = @()

        $files = $this.GetFiles()

        foreach ($file in $files) {
            $fileExtension = $file.Extension.ToLower()
            switch ($fileExtension) {
                '.csv' { $this.CSVFiles += $file.Name }
                '.json' { $this.JSONFiles += $file.Name }
                '.yaml' { $this.YAMLFiles += $file.Name }
                '.sql' { $this.SQLFiles += $file.Name }
                '.xml' { $this.XMLFiles += $file.Name }
                default { Write-Host "Unsupported file type: $fileExtension" }
            }
        }
    }

    [void] ListFiles() {
        Write-Host "Files in $($this.Name):"
        Write-Host "CSV Files: $($this.CSVFiles -join ', ')"
        Write-Host "JSON Files: $($this.JSONFiles -join ', ')"
        Write-Host "YAML Files: $($this.YAMLFiles -join ', ')"
        Write-Host "SQL Files: $($this.SQLFiles -join ', ')"
        Write-Host "XML Files: $($this.XMLFiles -join ', ')"
    }
}

# Example usage:
$folderStructure = [FileStructure]::new("C:\Path\To\Folder")
$folderStructure.ListFiles()
```

Now, the `FileStructure` class inherits from `System.IO.DirectoryInfo` and utilizes its properties and methods to represent a folder while also adding the capability to categorize and list files based on their extensions.
