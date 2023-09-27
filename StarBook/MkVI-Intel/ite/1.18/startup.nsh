echo -off
 cls
 set payload 1.18.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "Fixed an issue where batteries werent initialised"
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu %payload% 128
 		reset
 	endif
 endfor
