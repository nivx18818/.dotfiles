# Wez's Terminal

## Installation

### WinGet

```powershell
winget install WezTerm.WezTerm
```

### Scoop

```powershell
scoop bucket add extras
scoop install wezterm
```

## `WEZTERM_CONFIG_FILE`

Open PowerShell and run the following command to set the `WEZTERM_CONFIG_FILE` environment variable:

```powershell
[System.Environment]::SetEnvironmentVariable("WEZTERM_CONFIG_FILE", "<path-to-this-repository>\wezterm\wezterm.lua", "User")
```

For example:

```powershell
[System.Environment]::SetEnvironmentVariable("WEZTERM_CONFIG_FILE", "D:\code\dotfiles\wezterm\wezterm.lua", "User")
```
