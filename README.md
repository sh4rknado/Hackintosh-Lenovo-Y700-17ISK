# Hackintosh Lenovo-Y700-17ISK  (MOJAVE)
Hackintosh clover tools and others ticks


## Create USB INSTALLER 

        - Download the PATCH (MOJAVE installer) => http://dosdude1.com/mojave/#downloads

        - Format the USB
            1) diskutil list
            2) diskutil partitionDisk /dev/disk# GPT JHFS+ "USB" 100%
            
        - Create the MEDIA INSTALLER
            3) sudo "/Applications/Install macOS Mojave.app/Contents/Resources/createinstallmedia" --volume /Volumes/USB            
        
        - Installer Clover
            4) Launch the clover install
            5) Select the USB KEY
            6) Copy Past the EFI FOLDER from GIT (Lenovo Y700-17-ISK)
        
Notes : If you download mojave from app store you can see only installer tools but
he don't create the media installer just upgrade your system. (You can see Folder for the patch)

Guide : https://www.tech2tech.fr/creer-un-hackintosh-de-a-a-z-macos-sur-pc-partie-1/


---

## Tools Folder

        - Android Tools
            - HoRNDIS-9.2pkg (usb - bluetooth modem)
            - Android File Transfer (over USB/MTP)
        - Utils
            - plistEdit Pro (config.plist editor)
            - Hackintool (multi-tools for debug)
            - MaciASL (Patcher DDST)
            - ShowAllFile (View hidden file)
            - Mojave installer (PATCH)

---

## CLOVER V2.4K (R4871) Floder

        - CLOVER V 2.4K r4871 (installer)
        - EFI (Boot Folder Backup)
        - ALL Driver for ideapad Y700-17ISK
        - ALL KEXT for ideapad Y700-17ISK

Notes :

For work clover and Hackintosh :

- 1) Install clover V2.4K R4871 
- 2) Copy past the EFI folder into EFI BOOT
- 3) Reboot your computer


This Clover Folder is the fork. the original Folder will be found here :

https://github.com/uygar/lenovo-y700-hackintosh

---

## Wireless (WiFi+ Bluetooth)

        - HeliPort (APP)
        - Latest itlwm (2020-06-30)
            - itlwm.kext
            - itl80211.kext

Notes : into the folder itlwm you can see itlwm.kext but I don't use because don't boot into my Hackintosh.
 
After install Lastest itlvm your bluetooth will be function but you can't see  WiFi indicator. 
You need HeliPort for this and run the app on startup.



## Sierra bootable media

hdiutil attach /Applications/Install\ macOS\ Sierra.app/Contents/SharedSupport/InstallESD.dmg -noverify -nobrowse -mountpoint /Volumes/install_app

hdiutil convert /Volumes/install_app/BaseSystem.dmg -format UDSP -o /tmp/Sierra

hdiutil resize -size 8g /tmp/Sierra.sparseimage

hdiutil attach /tmp/Sierra.sparseimage -noverify -nobrowse -mountpoint /Volumes/install_build

rm /Volumes/install_build/System/Installation/Packages

cp -rp /Volumes/install_app/Packages /Volumes/install_build/System/Installation/

cp /Volumes/install_app/BaseSystem.chunklist /Volumes/install_build

cp /Volumes/install_app/BaseSystem.dmg /Volumes/install_build

hdiutil detach /Volumes/install_app

hdiutil detach /Volumes/install_build

hdiutil resize -size `hdiutil resize -limits /tmp/Sierra.sparseimage | tail -n 1 | awk '{ print $1 }'`b /tmp/Sierra.sparseimage

hdiutil convert /tmp/Sierra.sparseimage -format UDZO -o /tmp/Sierra

rm /tmp/Sierra.sparseimage

mv /tmp/Sierra.dmg ~/Desktop

sudo asr restore --source ~/Desktop/Sierra.dmg --target /Volumes/CLEF --noprompt --noverify --erase
