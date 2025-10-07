<h1 align="center">komorebi</h1>

<p align="center">Tiling Window Management for Windows.</p>

---

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

### Scoop

```powershell
scoop bucket add extras
scoop install komorebi whkd
```

### Upgrades

```powershell
# for winget
winget upgrade LGUG2Z.komorebi
```

```powershell
# for scoop
scoop update komorebi whkd
```

## `KOMOREBI_CONFIG_HOME` & `WHKD_CONFIG_HOME`

- Create the file `%USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` if it doesn't already exist.
- Open the file with your favorite text editor and add the following lines at the end of the file:

  ```powershell
  $Env:KOMOREBI_CONFIG_HOME = "<path-to-this-repository>\komorebi"
  $Env:WHKD_CONFIG_HOME = "<path-to-this-repository>\komorebi\whkd"
  ```

  For example:

  ```powershell
  $Env:KOMOREBI_CONFIG_HOME = "D:\.dotfiles\komorebi"
  $Env:WHKD_CONFIG_HOME = "D:\.dotfiles\komorebi\whkd"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.
