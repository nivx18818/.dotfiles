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

- Open PowerShell and run the following command to check whether you already have a profile file:

  ```powershell
  Test-Path $PROFILE
  ```

  If the command returns `False`, create the profile file by running:

  ```powershell
  New-Item -Path $PROFILE -ItemType File -Force
  ```

- Open the profile file with your favorite text editor and add the following lines at the end of the file:

  ```powershell
  $Env:YASB_CONFIG_HOME="<path-to-this-repository>\yasb"
  ```

  For example:

  ```powershell
  $Env:YASB_CONFIG_HOME="D:\code\dotfiles\yasb"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.
