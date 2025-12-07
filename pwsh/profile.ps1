$Env:KOMOREBI_CONFIG_HOME="D:\code\dotfiles\komorebi"
$Env:WHKD_CONFIG_HOME="D:\code\dotfiles\komorebi\whkd"
$Env:YASB_CONFIG_HOME="D:\code\dotfiles\yasb"
$Env:XDG_CONFIG_HOME="D:\code\dotfiles"
$Env:NVIM_APPNAME="vscode-nvim"

oh-my-posh init pwsh --config "D:\code\dotfiles\pwsh\poimandres.omp.json" | Invoke-Expression

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Set-PSReadLineKeyHandler -Key "Ctrl+b" -Function BackwardWord
Set-PSReadLineKeyHandler -Key "Ctrl+w" -Function ForwardWord
Set-PSReadLineKeyHandler -Key 'Ctrl+p' -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key 'Ctrl+n' -Function HistorySearchForward
