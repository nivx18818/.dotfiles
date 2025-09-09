# How to use my config ?

> This repository contains my personal configuration files for `komorebi`. For more information about these tools, please refer to their respective repositories:
>
> - [komorebi](https://github.com/LGUG2Z/komorebi)
> - [yasb](https://github.com/amnweb/yasb)

## Installation

### Long path support (recommended)

```powershell
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
```

### Disabling unnecessary system animations (recommended)

Enable the _Turn off all unnecessary animations (when possible)_ option in _Control Panel > Ease of Access > Ease of Access Centre / Make the computer easier to see_ for the best performance with `komorebi`.

### WinGet

```powershell
winget install LGUG2Z.komorebi
winget install LGUG2Z.whkd
```

### Upgrade

```powershell
winget upgrade LGUG2Z.komorebi
```

## `KOMOREBI_CONFIG_HOME` & `WHKD_CONFIG_HOME`

- Create the file `%USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` if it doesn't already exist.
- Open the file with your favorite text editor and add the following lines at the end of the file:

  ```powershell
  $Env:KOMOREBI_CONFIG_HOME = "<path-to-this-repository>"
  $Env:WHKD_CONFIG_HOME = "<path-to-this-repository>\whkd"
  ```

  For example:

  ```powershell
  $Env:KOMOREBI_CONFIG_HOME = "D:\komorebi-config"
  $Env:WHKD_CONFIG_HOME = "D:\komorebi-config\whkd"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.
