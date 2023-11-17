

# Don't add `Remove-Alias` on PowerShell >= 6.
# PowerShell >= 6 already has built-in `Remove-Alias`.
# Let use built-in `Remove-Alias` on PowerShell >= 6.
if ($PSVersionTable.PSVersion.Major -le 5) {
    function Remove-Alias ([string] $AliasName) {
        while (Test-Path Alias:$AliasName) {
            Remove-Item Alias:$AliasName -Force 2> $null
        }
    }
}
