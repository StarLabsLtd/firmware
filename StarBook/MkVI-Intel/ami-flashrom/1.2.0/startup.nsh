echo -off
 cls
 set payload 1.2.0.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "Updated the EC to 24.03"
echo "Fixes batteries not being initialised correctly"
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:AfuEfix64.efi then
 		fs%a:
 		AfuEfix64 %payload% /P /N /B /L
 		reset
 	endif
 endfor
