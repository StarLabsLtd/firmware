set ec "0.05.bin"

@echo -off
echo "  _____ _             _           _"
echo " /  ___| |           | |         | |"
echo " \ `--.| |_ __ _ _ __| |     __ _| |__  ___"
echo "  `--. \ __/ _` | '__| |    / _` | '_ \/ __|"
echo " /\__/ / || (_| | |  | |___| (_| | |_) \__ \"
echo " \____/ \__\__,_|_|  \_____/\__,_|_.__/|___/"

echo *********** BIOS & Firmware Update **********
echo
echo "This update contains the following changes:
echo "Modified F12F binding"

for %a run (0 10)
if exist fs%a:\eFuitX64.efi then
  fs%a:
   eFuitX64 /u %ec% /faildelay 
   reset  
endif
endfor
