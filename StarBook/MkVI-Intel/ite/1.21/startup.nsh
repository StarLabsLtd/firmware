echo -off
 cls
 set payload 1.21.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "Fix the issue when connecting the charger would power on the laptop"
echo "Reset the OCM status before initialisation"
echo "Reduce the frequency of battery status updates to 2W"
echo "Allow the power button to fall through"
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu %payload% 128
 		reset
 	endif
 endfor
