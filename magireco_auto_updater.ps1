param (
    [string]$phonepath = "/data/local/tmp/magireco.apk",
    [switch]$forceADBDownload = $false,
    [switch]$noInstall = $false,
    [switch]$noAPKDownload = $false,
	[switch]$NA = $false,
	[switch]$JP = $true
)

function Get-MagiReco-APK {
    $HTML = Invoke-WebRequest "https://apkpure.com/%E3%83%9E%E3%82%AE%E3%82%A2%E3%83%AC%E3%82%B3%E3%83%BC%E3%83%89-%E9%AD%94%E6%B3%95%E5%B0%91%E5%A5%B3%E3%81%BE%E3%81%A9%E3%81%8B%E3%83%9E%E3%82%AE%E3%82%AB%E5%A4%96%E4%BC%9D/com.aniplex.magireco/download"

    $magireco_dl_link = $HTML.Links |
    Where-Object { $_.class -eq 'ga' } |
    Select-Object -ExpandProperty href

    Invoke-WebRequest $magireco_dl_link -OutFile ".\magireco.apk"
}


function Get-MagiReco-APK-US {
	$HTML = Invoke-WebRequest "https://apkpure.com/magia-record-english/com.aniplex.magireco.en/download"
    
	$magireco_dl_link = $HTML.Links |
    Where-Object { $_.class -eq 'ga' } |
    Select-Object -ExpandProperty href

    Invoke-WebRequest $magireco_dl_link -OutFile ".\magireco.apk"
}


function Get-Platform-Tools {
    Invoke-WebRequest https://dl.google.com/android/repository/platform-tools-latest-windows.zip -OutFile ".\platform-tools.zip" | out-null
    Expand-Archive .\platform-tools.zip -DestinationPath .\
}



function Detect-ADB-Location {
    $adbloc = 'adb.exe'
    if ((Get-Command "adb.exe" -ErrorAction SilentlyContinue) -eq $null)
    {
        $adbloc = './platform-tools/adb.exe'
        if( -not (Test-Path './platform-tools/adb.exe') )
        {
            "No ADB installation detected, downloading"
            Get-Platform-Tools
        } 
        
    }
    $adbloc
}

function Install {
	if(-not $noAPKDownload)
	{
		"Downloading MagiReco APK"
		if($NA)
		{
			Get-MagiReco-APK-US
		} elseif($JP)
		{
			Get-MagiReco-APK
		}
	} else 
	{
		"Not downloading new APK..."
	}

	$adblocation
	if($forceADBDownload)
	{
		"Forcing ADB download"
		Get-Platform-Tools
		$adblocation = './platform-tools/adb.exe'
	}else
	{
		"Detecting ADB"
		$adblocation = Detect-ADB-Location
	}


	if(-not $noInstall)
	{
		"Waiting for Phone"
		& $adblocation wait-for-device
		& $adblocation devices
		"Uploading apk to phone"
		& $adblocation push magireco.apk $phonepath
		"Installing"
		& $adblocation shell pm install -i "com.android.vending" -r $phonepath
	} else 
	{
		"No Installation..."
		"ADBlocation is $adblocation" 
	}
}

Install
