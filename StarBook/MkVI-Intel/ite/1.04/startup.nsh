echo -off
 cls
 set payload 1.04.bin
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "Store power related variables in the EC RAM and mirror them to EC memory"
echo "to avoid memory overflow to mitigate some strange behaviours when the EC"
echo "memory overflows"
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu  %payload% 128
 		reset
 	endif
 endfor
