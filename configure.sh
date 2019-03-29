#!/bin/bash

#############
# Parameters
#############
# Validate that all arguments are supplied
if [ $# -lt 4 ]; then echo "Insufficient parameters supplied. Exiting"; exit 1; fi

AZUREUSER=$1;
ARTIFACTS_URL_PREFIX=$4
LOGPATH="/tmp/viveklog"
echo "AZUREUSER is $AZUREUSER" >> $LOGPATH
echo "ARTIFACTS_URL_PREFIX is $ARTIFACTS_URL_PREFIX" >> $LOGPATH
echo $1 >> $LOGPATH
echo $2 >> $LOGPATH
echo $3 >> $LOGPATH
echo $4 >> $LOGPATH
echo $5 >> $LOGPATH
echo $6 >> $LOGPATH
echo $7 >> $LOGPATH
echo $8 >> $LOGPATH
echo $9 >> $LOGPATH
echo ${10} >> $LOGPATH
echo ${11} >> $LOGPATH
echo ${12} >> $LOGPATH
echo ${13} >> $LOGPATH
echo ${14} >> $LOGPATH
echo ${15} >> $LOGPATH
echo ${16} >> $LOGPATH
echo ${17} >> $LOGPATH
echo ${18} >> $LOGPATH

###########
# Constants
###########
HOMEDIR="/home/$AZUREUSER";
echo "HOMEDIR is $HOMEDIR" >> $LOGPATH
CONFIG_LOG_FILE_PATH="$HOMEDIR/config.log";
echo "CONFIG_LOG_FILE_PATH is $CONFIG_LOG_FILE_PATH" >> $LOGPATH

#############
# Get the script for running as Azure user
#############
cd "/home/$AZUREUSER";


sudo -u $AZUREUSER /bin/bash -c "wget -N https://raw.githubusercontent.com/sysgain/vvivekbc/master/configure-quorum-azureuser.sh";

##################################
# Initiate loop for error checking
##################################
for LOOPCOUNT in `seq 1 5`; do
	sudo -u $AZUREUSER /bin/bash /home/$AZUREUSER/configure-quorum-azureuser.sh "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "${10}" "${11}" "${12}" "${13}" "${14}" "${15}" "${16}" "${17}" "${18}" >> $CONFIG_LOG_FILE_PATH 2>&1;
	if [ $? -ne 0 ]; then
		echo "Command failed on try $LOOPCOUNT, retrying..." >> $CONFIG_LOG_FILE_PATH;
		sleep 5;
		continue;
	else
		echo "======== Deployment successful! ======== " >> $CONFIG_LOG_FILE_PATH;
		exit 0;
	fi
done

echo "One or more commands failed after 5 tries. Deployment failed." >> $CONFIG_LOG_FILE_PATH;
exit 1
