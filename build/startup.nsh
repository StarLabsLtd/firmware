cls
 set payload 1.bin
 
 echo " "
 echo "This update is for the StarLite MkII. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 $ern
 for %a run (0 10)
 	if exist fs%a:eFuitX64.efi then
 		fs%a:
 		eFuitX64 /u %payload% /faildelay
 		reset
 	endif
 endfor
