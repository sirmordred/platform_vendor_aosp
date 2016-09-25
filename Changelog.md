# Jflte DevCon Team
### Developers & Testers
[B--B](https://github.com/B--B) - Lead

[AntaresOne](http://github.com/AntaresOne) - Developer, git mantainer, scripting, tester

[Alucard24](http://github.com/Alucard24) - Kernel Developer

[MatthewBooth](http://github.com/MatthewBooth) - OTA Updates, git maintainer, scripting, tester

[angelcalibur](https://github.com/angelcalibur) - Tester

[smeroni68](https://github.com/smeroni68) - Tester

[Jimsilver73](https://github.com/Jimsilver73) - Tester

[hawkerpaul](https://github.com/hawkerpaul) - Tester, scripting

[franzyroy](https://github.com/franzyroy) - Tester, cm themer

[smstiv](https://github.com/smstiv) - Tester

[side](https://github.com/dkati) - Tester, cm themer, rom maintainer

[javelinanddart](https://github.com/javelinanddart) - Kernel Developer

[srisurya95](https://github.com/srisurya95) - Rom-Kernel Developer

[gadget!](http://forum.xda-developers.com/member.php?u=2026779) - Themer, tester, graphic designer

### Changelog (full)
[AOSP-JF-MM](https://github.com/AOSP-JF-MM) - Project GitHub

### Changelog (short)

#### Ongoing changes...
* Kernel (JFLTE)
    * Compile with GCC 6.0.1 + fixed compiling warns
    * Small code updates/fixes
* ROM
    * jflte: added support for Samsung extended AGPS
    * jflte: Ramdisk cleaning + some small changes
    * jflte: fully fixed GSM devices and handle loki in a cleaner way
    * system/bt: disable bluedroid debug
    * system/bt: fixed stuttering audio for Broadcom chipsets
    * OMS/Substratum: updates and fixes (sync with latest official patchsets)
    * Ported ALL CAF code in all our repos (temporary in separate branches as it cause more troubles than benefits, especially on BT)
    * overlays: updated disabled components list for N
    * Small Sepolicy fixes
    * Fixes and updates for BFQIO cgroup

#### Alpha 2 (20160902)
* Kernel (JFLTE)
    * Fixed boot on N
    * Ramdisk: updated and fixed scripts for N
    * Ramdisk: updated and fixed scripts for systemless root
    * Merged latest 3.18 fixes/updates for ext4
    * General code updates/fixes
    * Fixed CVE-2015-8839
* ROM
    * Added exfat and NTFS support
    * System Sounds: use Stereophonic & Remastered Nexus sounds
    * Materialized some old icons/colours/toasts
    * Fixed NFC
    * Speed up animations
    * Audio: enabled custom audio policy again
    * Sepolicy: fixes + partial updates for N
    * frameworks/native: ported CAF code (mostly on surfaceflinger)
    * Add back changelog to Settings
    * SystemUpdateService: enable service but lock its receivers
    * Frameworks/base: general optimisations
    * skia: ported CAF code
    * Camera: various fixes
    * Build: fixed backuptools and override props functions
    * Build: completely reworked ROM versioning
    * OMS: exposed almost all harcoded colours (WIP)
    * native: ported cm fixes for QCOM devices
    * Webview: use Google WebView version instead of stock AOSP
    * Fixed LEDify
    * STweaks: fixed systemless root detection
    * SuperSU: update to v2.78
    * Settings: general fixes/enhancements and some icon materialization
    * Base: partially ported CAF code/optimisations
    * Update sources to Android 7.0.0 release 6
    * RIL: removed old LP hack for NO SIM issue in Airplane Mode and fix things in a proper way

#### Alpha 1 (20160901)

* Initial public release
