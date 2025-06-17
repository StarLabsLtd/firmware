echo -off
 cls
 set payload 25.4.0.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-AMD. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "General Updates:"
echo "* Update AGESA to the latest versionAdd commentMore actions"
echo "* Make the VRAM allocation configurable"
echo "* Fix issue that prevented the batteries from charging"
echo ""
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:AfuEfix64.efi then
 		fs%a:
 		AfuEfix64 %payload% /P /B /N /R /K /X /L
 		reset
 	endif
 endfor
