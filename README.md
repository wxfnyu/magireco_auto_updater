MagiReco ADB Auto Updater ver. 1 by wsr
--------------------------------
Utilizes Windows PowerShell to automatically download newest Magia Record .apk file from APKPure and install it to mobile device via Android Debug Bridge(ADB).

Prerequisites
-------------
Windows machine connected to a supported Android device. An official list of supported Android devices can be found linked below. Note that some devices not on the list may still work; so it may be worth trying even if you cannot find your device listed.
https://faq.magireco.com/faq/show/37?back=front%2Fcategory%3Ashow&category_id=22
MagiReco ADB Auto Updater has been tested and confirmed working on Windows 10. Although it will most likely run on older versions of Windows with Powershell version >=5, success is not guaranteed.

Installation and Deployment
---------------------------
To use MagiReco ADB Auto Updater, you must first enable USB Debugging Mode on your Android device. Please follow the instructions given in the link below for your version of Android.
https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm

Simply rightclick on magireco_auto_updater.ps1 and press run with Powershell.

Credits
-------

Thanks to : Madigan Mason and Illumis for testing and debugging help

License
-------
This project is licensed under the MIT License.

Patch Notes
-----------

V2.0

Now auto detects ADB, and will download if appropriate, better logic overall