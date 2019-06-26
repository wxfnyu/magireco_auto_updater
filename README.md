MagiReco ADB Auto Installer and Updater ver. 2.2 by veritas
---------------------------------------------------------

What is this?
-------------

A script that installs or updates MagiReco from a Windows computer to an Android device, automagically with only one or two clicks!

More technical explaination
---------------------------

Utilizes Windows PowerShell to automatically download the newest Magia Record .apk file from APKPure and install it to a mobile device via Android Debug Bridge(ADB). It will download ADB if needed automatically.

Prerequisites
-------------

A Windows machine connected to a supported Android device. If you're not sure if your device is supported, try asking in the MagiReco discord, linked below.

MagiReco ADB Auto Updater has been tested and confirmed to be working on Windows 10. Although it will most likely run on older versions of Windows with Powershell version 5 or greater, success is not guaranteed.

How to use (JP Version)
----------------------------------

1. Enable USB Debugging Mode on your Android device. [Guide](https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm)

2. Download magireco_auto_updater.ps1 \( it's best to put it in its own folder \)

3. Simply right-click on magireco_auto_updater.ps1 and press "Run with Powershell".

![what to click](https://b.catgirlsare.sexy/KEvz.png)

4. Type "y" and hit enter to any requests for changes in execution policy

![example of execution policy popup](https://b.catgirlsare.sexy/7jRh.PNG)

If you're confused about any of this, feel free to ping or dm me via the Discord server below.

How to use (Installing NA Version)
----------------------------------

1. Enable USB Debugging Mode on your Android device. [Guide](https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm)

2. Download magireco_auto_updater.ps1 and magireco_auto_updater_NA.ps1 and put them in the same folder \( it's best to put them in their own folder \)

3. Simply right-click on magireco_auto_updater_NA.ps1 and press "Run with Powershell".

![what to click](https://b.catgirlsare.sexy/KEvz.png)

4. Type "y" and hit enter to any requests for changes in execution policy

![example of execution policy popup](https://b.catgirlsare.sexy/7jRh.PNG)

If you're confused about any of this, feel free to ping or dm me via the Discord server below.

Advanced
----------

There are some flags for more advanced users, use at your own peril.

These flags can be mixed and matched as needed.

### -NA

Install the NA version instead of the JP version

```
./magireco_auto_updater.ps1 -NA
```

### -phonepath

Changes the location of where the APK is uploaded to, might be useful for certain versions of Android

```
./magireco_auto_updater.ps1 -phonepath "/example/path/magireco.apk"
```

### -forceADBDownload

Forces the script to download ADB from Google servers and to use that instead of any local installation.

Could be useful if you have an older version of ADB that you need to keep installed, but a newer
Android OS.

```
./magireco_auto_updater.ps1 -forceADBDownload
```

### -noAPKDownload

Script will not download a remote version of the APK, instead attempting to use an already downloaded one, if one exists.

Useful to save bandwith if it failed on install.

**Will break the script if the APK was not already downloaded**

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

V3.0

Added support for NA version, NA/JP flags added.

Cleaned up code logic a bit by encapsulating all logic in a Install function

