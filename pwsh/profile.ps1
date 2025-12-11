$Env:KOMOREBI_CONFIG_HOME="D:\code\dotfiles\komorebi"
$Env:WHKD_CONFIG_HOME="D:\code\dotfiles\komorebi\whkd"
$Env:YASB_CONFIG_HOME="D:\code\dotfiles\yasb"
$Env:XDG_CONFIG_HOME="D:\code\dotfiles\vscode-nvim"

oh-my-posh init pwsh --config "D:\code\dotfiles\pwsh\poimandres.omp.json" | Invoke-Expression

if ($Env:TERM_PROGRAM -ne "vscode") {
    fastfetch
}

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Keybindings
Set-PSReadLineKeyHandler -Key "Ctrl+b" -Function BackwardWord
Set-PSReadLineKeyHandler -Key "Ctrl+w" -Function ForwardWord
Set-PSReadLineKeyHandler -Key 'Ctrl+p' -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key 'Ctrl+n' -Function HistorySearchForward

# Better git clone
function gclone {
    param(
        [Parameter(Mandatory)]
        [string]$url,

        [string]$dir
    )

    # Add .git suffix if it's missing
    if (-not $url.EndsWith('.git')) {
        $url = "$url.git"
    }

    # If no custom directory is provided, extract repo name from URL
    if (-not $dir) {
        # Take the last segment of the URL and strip the .git extension
        $repoName = ($url.Split('/')[-1] -replace '\.git$', '')
        $dir = $repoName
    }

    # Clone the repository into the target directory
    git clone $url $dir | Out-Null

    # After a successful clone, move into the new directory
    if (Test-Path $dir) {
        Set-Location $dir
    }
}

# Unix-like remove command with -r and -f flags
function rm {
    param(
        [Parameter(Mandatory)]
        [string]$path,

        [Alias('r')] [switch]$Recursive,  # -r flag (recursive)
        [Alias('f')] [switch]$Force       # -f flag (force)
    )

    $recurse = $Recursive.IsPresent
    $force   = $Force.IsPresent

    Remove-Item -Path $path -Recurse:$recurse -Force:$force -ErrorAction SilentlyContinue
}

# Unix-like copy command with optional -r
function cp {
    param(
        [Parameter(Mandatory)] [string]$src,
        [Parameter(Mandatory)] [string]$dst,
        [Alias('r')] [switch]$Recursive
    )

    Copy-Item -Path $src -Destination $dst -Recurse:$Recursive
}

# Unix-like move command
function mv {
    param(
        [Parameter(Mandatory)] [string]$src,
        [Parameter(Mandatory)] [string]$dst
    )

    Move-Item -Path $src -Destination $dst
}

# mkdir & cd
function mkcd {
    param([Parameter(Mandatory)] [string]$name)
    New-Item -ItemType Directory -Path $name | Out-Null
    Set-Location $name
}

# Show the command's path (Unix-like)
function which {
    param([Parameter(Mandatory)] [string]$name)
    (Get-Command $name).Source
}
