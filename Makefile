## SPDX-License-Identifier: GPL-2.0-only

export SHELL := env bash

all: startup.nsh

version=1.0.0

startup-script = cls\n
startup-script += set payload $(version).bin\n
startup-script += \n
startup-script += echo \"*******************************************************************\"\n
startup-script += echo \".d8888. d888888b  .d8b.  d8888b.   db       .d8b.  d8888b. .d8888. \"\n
startup-script += echo \"88\'  YP \`~~88~~\' d8\' \`8b 88  \`8D   88      d8\' \`8b 88  \`8D 88\'  YP \"\n
startup-script += echo \"\`8bo.      88    88ooo88 88oobY\'   88      88ooo88 88oooY\' \`8bo.   \"\n
startup-script += echo \"  \`Y8b.    88    88~~~88 88\`8b     88      88~~~88 88~~~b.   \`Y8b. \"\n
startup-script += echo \"db   8D    88    88   88 88 \`88.   88booo. 88   88 88   8D db   8D \"\n
startup-script += echo \"\`8888Y\'    YP    YP   YP 88   YD   Y88888P YP   YP Y8888P\' \`8888Y\' \"\n
startup-script += echo \"*******************************************************************\"\n
startup-script += echo \"********************* BIOS & Firmware Update **********************\"\n
startup-script += echo \"*******************************************************************\"\n
startup-script += echo \" \"\n
startup-script += echo \"This update is for the $$model. Installing on any other laptop will cause it not to start.\"\n
startup-script += echo \" \"\n
startup-script += echo \"Press Enter to update firmware or press Q to quit.\"\n
startup-script += pause\n
startup-script += echo \"This update contains the following changes:\"\n
startup-script += $$ern\n
startup-script += for %%a run (0 10)\n
startup-script += \tif exist fs%%a:$tool.efi then\n
startup-script += \t\tfs%%a:\n
startup-script += \t\t$$tool$$selector %%payload%% $$switch\n
startup-script += \t\treset\n
startup-script += \tendif\n
startup-script += endfor\n


startup.nsh:
	printf "$(startup-script)" > $@


# clean:

# .phony:
