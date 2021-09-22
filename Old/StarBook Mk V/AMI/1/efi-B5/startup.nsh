echo -off 	
cls
	
set payload 1.bin 	
 	
echo "*******************************************************************" 	
echo ".d8888. d888888b  .d8b.  d8888b.   db       .d8b.  d8888b. .d8888. " 	
echo "88'  YP `~~88~~' d8' `8b 88  `8D   88      d8' `8b 88  `8D 88'  YP " 	
echo "`8bo.      88    88ooo88 88oobY'   88      88ooo88 88oooY' `8bo.   " 	
echo "  `Y8b.    88    88~~~88 88`8b     88      88~~~88 88~~~b.   `Y8b. " 	
echo "db   8D    88    88   88 88 `88.   88booo. 88   88 88   8D db   8D " 	
echo "`8888Y'    YP    YP   YP 88   YD   Y88888P YP   YP Y8888P' `8888Y' " 	
echo "*******************************************************************" 	
echo "********************* BIOS & Firmware Update **********************" 	
echo "*******************************************************************" 	
echo " " 	
echo "This update is for the StarBook Mk V. Installing on any other laptop will cause it not to start." 	
echo " " 	
echo "Press Enter to update firmware or press Q to quit." 	
pause 	
echo "This update contains the following changes:" 	
echo "Initial release firmware for the StarBook Mk V"
echo " "
echo "AMI:        5.29"
echo "CSME:       15.0.30.1776"
echo "Microcode:  0x88"
echo "FSP:        A.0.51.31"
echo " "
echo "Configurable options:"
echo "Hyper-Threading:             Enable / Disable"
echo "Intel VT-d:                  Enable / Disable"
echo "Power Profile:               Power Saving / Balanced / Performance"
echo "ME State:                    Enable / Disable"
echo "Wireless:                    Enable / Disable"
echo "Microphone:                  Enable / Disable"
echo "Clock Gating:                Enable / Disable"
echo "Keyboard Backlight Timeout:  30 seconds / 1 minute / 3 minutes / 5 minutes / Never"
echo "Fn Ctrl Swap:                Enable / Disable"
echo "Power Profiles are as below:"
echo "Performance:   PL1:         35W"
echo "               PL2:         64W"
echo "               TurboBoost:  Enabled"
echo "Balanced:      PL1:         15W"
echo "               PL2:         35W"
echo "               TurboBoost:  Enabled"
echo "Power Saving:  PL1:         15W"
echo "               PL2:         15W"
echo "               TurboBoost:  Disabled"
 	
for %a run (0 10) 	
if exist fs%a:AfuEfix64.efi then 	
  fs%a: 	
  AfuEfix64 %payload% /P /N /B /L 	
  reset 	
endif 	
endfor