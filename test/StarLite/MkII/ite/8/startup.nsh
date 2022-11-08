cls
 set payload 8.bin
 
 echo "*******************************************************************"
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarLite MkII. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "This is a change"
echo "And another"
 for %a run (0 10)
 	if exist fs%a:eFuitX64.efi then
 		fs%a:
 		eFuitX64 /u %payload% /faildelay
 		reset
 	endif
 endfor
