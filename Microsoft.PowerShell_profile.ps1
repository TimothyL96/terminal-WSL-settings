Import-Module Get-ChildItemColor
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_rainbow.omp.json" | Invoke-Expression 

# Change color for directories to Blue
$GetChildItemColorTable.File['Directory'] = "Blue"

# Change color for executables to Green
ForEach ($Exe in $GetChildItemColorExtensions.ExecutableList) {
    $GetChildItemColorTable.File[$Exe] = "Green"
}