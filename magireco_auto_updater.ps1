$HTML = Invoke-WebRequest "https://apkpure.com/%E3%83%9E%E3%82%AE%E3%82%A2%E3%83%AC%E3%82%B3%E3%83%BC%E3%83%89-%E9%AD%94%E6%B3%95%E5%B0%91%E5%A5%B3%E3%81%BE%E3%81%A9%E3%81%8B%E3%83%9E%E3%82%AE%E3%82%AB%E5%A4%96%E4%BC%9D/com.aniplex.magireco/download"

$magireco_dl_link = $HTML.Links |
Where-Object { $_.class -eq 'ga' } |
Select-Object -ExpandProperty href

Invoke-WebRequest $magireco_dl_link -OutFile ".\magireco.apk"


.\platform-tools\adb.exe devices
.\platform-tools\adb.exe push magireco.apk /sdcard/magireco.apk
.\platform-tools\adb.exe shell pm install -i "com.android.vending" -r /sdcard/magireco.apk