# Aliases

## Git

Set-Alias -Name gs -Value 'git status'
Set-Alias -Name ga -Value 'git add'
Set-Alias -Name gd -Value 'git diff'

## Commands

Set-Alias -Name us -Value Update-Software

function Update-Software {
    <#
    .SYNOPSIS
        Updates all software installed via Winget & Chocolatey. Alias: us
    #>
    Write-Verbose "Updating software installed via Winget & Chocolatey"
    sudo cache on
    sudo winget upgrade --all --include-unknown --silent --verbose
    sudo choco upgrade all -y
    sudo -k
    $ENV:SOFTWARE_UPDATE_AVAILABLE = ""
}

# Env Variables
$ENV:STARSHIP_CONFIG = "$HOME\starship\starship.toml"

Invoke-Expression (&starship init powershell)