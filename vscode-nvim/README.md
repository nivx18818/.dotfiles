# VSCode Neovim Integration

This setup allows you to use Neovim as the backend for VSCode's editing capabilities.

## Prerequisites

Install [Neovim](https://neovim.io/).

### Winget

```powershell
winget install Neovim.Neovim
```

### Scoop

```powershell
scoop bucket add main
scoop install main/neovim
```

## Installation

1. Install the [VSCode Neovim extension](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim).
2. Configure the extension to point to your Neovim installation.

## `XDG_CONFIG_HOME` & `NVIM_APPNAME`

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
  $Env:XDG_CONFIG_HOME="<path-to-this-repository>"
  $Env:NVIM_APPNAME="vscode-nvim"
  ```

  For example:

  ```powershell
  $Env:XDG_CONFIG_HOME="D:\code\dotfiles"
  $Env:NVIM_APPNAME="vscode-nvim"
  ```

- Allow the execution of PowerShell scripts if you haven't already done so:

  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

- Restart your PowerShell session to apply the changes.
