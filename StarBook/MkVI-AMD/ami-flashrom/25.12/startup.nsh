echo -off
 cls
 set payload 25.12.rom
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-AMD. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "General Updates:"
echo "* EC startup time has been reduced from 415ms to 170ms, whilst being hardened to avoid getting stuck"
echo "* Remove the power button debounce (double press is no longer required)"
echo "* The system will now wake if suspended, and the battery gets too low"
echo ""
echo "Bug Fixes / Enhancements:"
echo "* Fixed an issue that prevented powering off in certain conditions"
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
