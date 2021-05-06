echo -off 	
cls
	
set payload 2.4.0.bin 	
 	
echo "*******************************************************************" 	
echo ".d8888. d888888b  .d8b.  d8888b.   db       .d8b.  d8888b. .d8888. " 	
echo "88'  YP `~~88~~' d8' `8b 88  `8D   88      d8' `8b 88  `8D 88'  YP " 	
echo "`8bo.      88    88ooo88 88oobY'   88      88ooo88 88oooY' `8bo.   " 	
echo "  `Y8b.    88    88~~~88 88`8b     88      88~~~88 88~~~b.   `Y8b. " 	
echo "db   8D    88    88   88 88 `88.   88booo. 88   88 88   8D db   8D " 	
echo "`8888Y'    YP    YP   YP 88   YD   Y88888P YP   YP Y8888P' `8888Y' " 	
echo "*******************************************************************" 	
echo "********************* BIOS & Firmware Update **********************" 	
echo "*******************************************************************" 	
echo " " 	
echo "This update is for the Star LabTop Mk IV. Installing on any other laptop will cause it not to start." 	
echo " " 	
echo "Press Enter to update firmware or press Q to quit." 	
pause 	
echo "This update contains the following changes:" 	
echo "Fixed bug where Windows would output sound to both headphones and speakers"
 	
for %a run (0 10) 	
if exist fs%a:AfuEfix64.efi then 	
  fs%a: 	
  AfuEfix64 %payload% %payload% /P /N /B /L 	
  reset 	
endif 	
endfor