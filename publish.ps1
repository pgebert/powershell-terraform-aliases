# Publish module
#
# Publish module locally:
# .\publish.ps1
#
# Publish module locally and to PsGallery:
# .\publish.ps1 -ApiKey <apiKey>

param(
    [Parameter(Mandatory=$false)]
    [string]$ApiKey
)

$projectName = "terraform-aliases"
$content = Import-PowerShellDataFile ".\src\$projectName.psd1"
$version = "$($content.ModuleVersion)"

# Prerelease version
$versionP = "$($content.ModuleVersion)"
$preRelease = $false

$folder = "~\Documents\WindowsPowerShell\Modules\$projectName\$version" -join "\"

Write-Host "Module folder : $folder`n"

if ($content.PrivateData.PSData.Prerelease) {
    $versionP = "$($content.ModuleVersion)","$($content.PrivateData.PSData.Prerelease)" -join "-"
    $preRelease = $true
}

# Remove existing installations of the module
Uninstall-Module $projectName -ErrorAction SilentlyContinue

# Create module folder if it does not exist
if ((Test-Path -Path $folder) -ne $true) {
    mkdir -Path $folder
}

# Copy module to module folder
Copy-Item -Path ".\src\*" -Destination "$folder\" -Force -Recurse

# Import Module
Import-Module PowerShellGet

# Check success of last command
if($?) {
    Write-Host "> Published module locally: ${projectName}:$versionP"
}

if ($ApiKey) {

    # Fix for publish-module network issue
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    # Fix for language issue of nuget
    $env:NUGET_CLI_LANGUAGE="en_US"

    $params = @{
        Name = $projectName
        NuGetApiKey = $ApiKey
        Verbose = $true
        RequiredVersion = $versionP
        AllowPrerelease = $preRelease
    }

    Publish-Module @params

    # Check success of last command
    if($?) {
        Write-Host "> Published module in PsGallery: ${projectName}:$versionP"
    }

}
