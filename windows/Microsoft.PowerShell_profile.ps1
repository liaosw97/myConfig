# PSReadLine
Import-Module PSReadLine
# Enable Prediction History
Set-PSReadLineOption -PredictionSource History
# Advanced Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# oh-my-posh
Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/jandedobbeleer.omp.json")

# FZF
Get-Command fzf*.exe
#Get-ChildItem . -Recurse -Attributes Directory | Invoke-Fzf | Set-Location

#Get-ChildItem . -Recurse -Attributes !Directory | Invoke-Fzf | % { notepad $_ }

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# example command - use $Location with a different command:
$commandOverride = [ScriptBlock]{ param($Location) Write-Host $Location }
# pass your override to PSFzf:
#Set-PsFzfOption -AltCCommand $commandOverride

Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

Set-PsFzfOption -TabExpansion

#Set-Location (Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf) # This works as of version 2.2.8
#Get-ChildItem . -Recurse | ? { $_.PSIsContainer } | Invoke-Fzf | Set-Location
