# Installation

- Open PowerShell and run the following command to check whether you already have a profile file:

  ```powershell
  Test-Path $PROFILE
  ```

  If the command returns `False`, create the profile file by running:

  ```powershell
  New-Item -Path $PROFILE -ItemType File -Force
  ```

- Open the profile file with your favorite text editor and add the following lines at the end of the file to source this repository's PowerShell profile:

  ```powershell
  . "<path-to-this-repository>\pwsh\profile.ps1"
  ```

  For example:

  ```powershell
  . "D:\code\dotfiles\pwsh\profile.ps1"
  ```
