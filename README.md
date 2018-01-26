MagiReco ADB Auto Updater ver. 1 by wsr
--------------------------------
Utilizes Windows PowerShell to automatically download newest Magia Record .apk file from APKPure and install it to mobile device via Android Debug Bridge(ADB).

Prerequisites
-------------
Windows machine connected to a supported Android device. An official list of supported Android devices can be found linked below. Note that some devices not on the list may still work; so it may be worth trying even if you cannot find your device listed.
https://faq.magireco.com/faq/show/37?back=front%2Fcategory%3Ashow&category_id=22
MagiReco ADB Auto Updater has been tested and confirmed working on Windows 8 and Windows 10. Although it will most likely run on older versions of Windows, success is not guaranteed.

Installation and Deployment
---------------------------
To use MagiReco ADB Auto Updater, you must first enable USB Debugging Mode on your Android device. Please follow the instructions given in the link below for your version of Android.
https://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm
Connect your phone to your computer via USB, and pick one of the two methods below.

Method 1: For people who already have ADB installed on their computer:
You will be using the file magireco_auto_updater_global_adb.ps1. Place this script in the same folder as you have installed ADB to, then right click the file and select Run with PowerShell. A Windows PowerShell window should open, and you should see the data begin to download.

Method 2: For people who do not already have ADB installed on their computer:
You will need to download magireco_auto_updater.ps1 and the folder platform-tools. Place them both in the same directory, then right click the .ps1 file and select Run with PowerShell. A Windows PowerShell window should open, and you should see the data begin to download.

Credits
-------

Thanks to : Madigan Mason and Illumis for testing and debugging help

License
-------
This project is licensed under the MIT License.
