. $PSScriptRoot\aliases.ps1

$FunctionsToExport = @(
    'tf',
    'tfa',
    'tfc',
    'tfd',
    'tfd',
    'tff',
    'tfi',
    'tfo',
    'tfp',
    'tfv'
)

Export-ModuleMember -Function $FunctionsToExport
