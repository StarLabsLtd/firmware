echo -off
 cls
 set payload 1.13.0.rom
 
 echo " "
 echo "This update is for the StarBook MkVI-AMD. Installing on any other laptop will cause it not to start."
 echo " "
 echo "This update contains the following changes:"
 echo "Update PI to 1.0.0.fa"
echo "Expose the behaviour of the overcharge protection"
echo "Improved power reporting"
echo "Improved charger detection speed"
echo "Improved banking"
echo "Improved XLT speed"
echo "Flicker the power LED when changing power states"
echo "Minor power savings"
echo "Clear the anx memory when latching"
 echo "Press Enter to update firmware or press Q to quit."
 pause
 for %a run (0 10)
 	if exist fs%a:AfuEfix64.efi then
 		fs%a:
 		AfuEfix64 %payload% /P /B /N /R /K /X /L
 		reset
 	endif
 endfor
