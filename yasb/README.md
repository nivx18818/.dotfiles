<h1 align="center">YASB Reborn</h1>

<p align="center">A highly configurable Windows status bar written in Python.</p>

---

## Installation

### Requirements

- Nerd Fonts. Install [Nerd Fonts](https://www.nerdfonts.com/font-downloads) ([JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip) recommended).

### WinGet

```powershell
winget install AmN.yasb
```

### Scoop

```powershell
scoop bucket add extras
scoop install yasb
```

## `YASB_CONFIG_HOME`

- Create the file `%USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1` if it doesn't already exist.
- Open the file with your favorite text editor and add the following lines at the end of the file:

  ```powershell
  $Env:YASB_CONFIG_HOME = "<path-to-this-repository>\.yasb"
  ```

  For example:

  ```powershell
  $Env:YASB_CONFIG_HOME = "D:\.dotfiles\.yasb"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.
