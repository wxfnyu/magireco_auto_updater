MagiReco ADB Auto Installer and Updater ver. 2.2 by veritas
---------------------------------------------------------

What is this?
-------------

This is a script that installs or updates MagiReco from a Windows computer to an Android device, automagically! Hopefully with only one or two clicks!

More technical explaination
---------------------------

Utilizes Windows PowerShell to automatically download newest Magia Record .apk file from APKPure and install it to mobile device via Android Debug Bridge(ADB). It will download ADB if needed automatically.

Prerequisites
-------------

Windows machine connected to a supported Android device. If you're not sure if your device is supported, try asking in the MagiReco discord, linked below.

MagiReco ADB Auto Updater has been tested and confirmed working on Windows 10. Although it will most likely run on older versions of Windows with Powershell version >=5, success is not guaranteed.

How to use
---------------------------

1. enable USB Debugging Mode on your Android device. [Guide](https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm)

2. Simply rightclick on magireco_auto_updater.ps1 and press run with Powershell.

![what to click](https://b.catgirlsare.sexy/KEvz.png)

If you're confused about any of this, feel free to ping or dm me via the Discord server below.

Advanced
----------

There are some flags for more advanced users, use at your own peril.

They can be mixed and matched as needed.

### -phonepath

Changes the location of where the APK is uploaded to, might be useful for certain versions of Android

```
./magireco_auto_updater.ps1 -phonepath "/example/path/magireco.apk"
```

### -forceADBDownload

Forces the script to download ADB from Google servers and to use that instead of any local installation.

Could be useful if you have an older version of ADB that you need to keep installed for some reason, but a newer
Android OS.

```
./magireco_auto_updater.ps1 -forceADBDownload
```

### -noAPKDownload

Script will not download a remote version of the APK, instead attempting to use an already downloaded one, if one exists.

Useful to save bandwith if it failed on install for some reason.

Will break script! if APK was not already downloaded

```
./magireco_auto_updater.ps1 -noAPKDownload
```

### -noInstall

The script will not attempt to install the APK onto a device

Useful for debugging and testing.

```
./magireco_auto_updater.ps1 -noInstall
```


Credits
-------

Thanks to : Madigan Mason and Illumis for testing and debugging help

Useful Links
------------

MagiReco Discord: https://discord.gg/SNJyn5H (Ping me with @veritas#0013)

MagiReco English Wiki: http://magireco.wikia.com/wiki/Magia_Record_English_Wiki

License
-------

This project is licensed under the MIT License.

Patch Notes
-----------

V2.0

Now auto detects ADB, and will download if appropriate, better logic overall

V2.1

Readme very updated

V2.2

Flags added

