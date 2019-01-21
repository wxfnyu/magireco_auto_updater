MagiReco ADB Auto Installer and Updater ver. 2.1 by veritas
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

To use MagiReco ADB Auto Updater, you must first enable USB Debugging Mode on your Android device. Please follow the instructions given in the link below for your version of Android.
https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm

Simply rightclick on magireco_auto_updater.ps1 and press run with Powershell.

If you're confused about any of this, feel free to ping or dm me via the Discord server below.

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