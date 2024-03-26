echo -off
 cls
 set payload 24.03.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the LabTop MkIV. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "Add an indicator for LEARN"
echo "Make LEARN configurable"
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu %payload% 128
 		reset
 	endif
 endfor
