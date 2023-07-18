$OutPath="$PWD\Tools"

if(!(Test-Path $OutPath)) {
    New-Item -Type Directory $PWD\Tools -Force | out-null
}

$baseUri = "https://raw.githubusercontent.com/microsoft/winget-pkgs/master/Tools"

$PRTest = "$baseUri/PRTest.ps1"
$YamlCreate = "$baseUri/YamlCreate.ps1"
$SanboxTest = "$baseUri/SandboxTest.ps1"

$srcts = @(
    $PRTest
    $YamlCreate
    $SanboxTest
)

foreach ($srct in $srcts) {
    $filename = ($srct).split('/')[-1]
    Invoke-WebRequest -Uri $srct -OutFile "Tools/$filename" | out-null
    Write-Progress -CurrentOperation "Downloading $filename" ( "Downloading..." )
    Start-Sleep 1
}
