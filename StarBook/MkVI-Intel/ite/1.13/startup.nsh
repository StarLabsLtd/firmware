echo -off
 cls
 set payload 1.13.bin
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "Increase the charging speed to 1C when temperatures allow"
echo "Reduce the amount of variables polled via the SMBus"
echo "Fixed an issue when batteries would not exit shipping mode"
echo ""
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu  %payload% 128
 		reset
 	endif
 endfor
