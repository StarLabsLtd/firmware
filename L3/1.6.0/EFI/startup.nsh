set bios "1.6.0.rom"

@echo -off
echo "  _____ _             _           _"
echo " /  ___| |           | |         | |"
echo " \ `--.| |_ __ _ _ __| |     __ _| |__  ___"
echo "  `--. \ __/ _` | '__| |    / _` | '_ \/ __|"
echo " /\__/ / || (_| | |  | |___| (_| | |_) \__ \"
echo " \____/ \__\__,_|_|  \_____/\__,_|_.__/|___/"

echo *********** BIOS & Firmware Update **********
echo
echo "This update contains the following changes:"
echo "Minor Updates"

for %a run (0 10)
if exist fs%a:\AfuEfix64.efi then
  fs%a:
   AfuEfix64.efi %bios% /P /B /N
  reset
endif
endfor
