echo -off
 cls
 set payload 1.03.bin
 
 echo "*******************************************************************"
 echo "********************* BIOS & Firmware Update **********************"
 echo "*******************************************************************"
 echo " "
 echo "This update is for the StarBook MkVI-Intel. Installing on any other laptop will cause it not to start."
 echo " "
 echo "Press Enter to update firmware or press Q to quit."
 pause
 echo "This update contains the following changes:"
 echo "Improved the reliability of DC Jack charging by modifying it to 800MHz, 3A"
echo "Avoided charging stalling by continuously polling the SMBus after overcharge protection is active"
echo "Exposed the behavior of overcharge protection to APCI"
echo "Set the charge LED to purple when overcharge protection is active"
echo "Modified fan curve"
echo "Ensured the trackpad is in the desired state by polling its state every 10ms"
echo "Set the brightness of the keyboard backlight to the maximum"
echo "Streamlined the system by removing unused SMM events"
 for %a run (0 10)
 	if exist fs%a:ifu.efi then
 		fs%a:
 		ifu  %payload% 128
 		reset
 	endif
 endfor
