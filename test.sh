AZUREUSER=$1;
PASSWD=$2;
PASSPHRASE=$3;
ARTIFACTS_URL_PREFIX=$4;
NETWORK_ID=$5;
MAX_PEERS=$6;
NODE_TYPE=$7;       # (0=Voting node; 1=Blockmaking node; 2=Observer )
GETH_IPC_PORT=$8;
NUM_VOTERS=${9};
VN_NODE_PREFIX=${10};
NUM_BLOCKMAKERS=${11};
BM_NODE_PREFIX=${12};
NUM_OBSERVERS=${13};
OB_NODE_PREFIX=${14};
NODE_SEQNUM=${15};
ADMIN_SITE_PORT=${16};
CAKESHOP_FQDN=${17};
CAKESHOP_STARTING_PORT=${18};
echo "=============================================================" >> /tmp/viveklog
echo "AZUREUSER is $AZUREUSER" >> /tmp/viveklog
echo "PASSWD is $PASSWD" >> /tmp/viveklog
echo "PASSPHRASE is $PASSPHRASE" >> /tmp/viveklog
echo "ARTIFACTS_URL_PREFIX is $ARTIFACTS_URL_PREFIX" >> /tmp/viveklog
echo "NETWORK_ID is $NETWORK_ID" >> /tmp/viveklog
echo "MAX_PEERS is $MAX_PEERS" >> /tmp/viveklog
echo "NODE_TYPE is $NODE_TYPE" >> /tmp/viveklog
echo "GETH_IPC_PORT is $GETH_IPC_PORT" >> /tmp/viveklog
echo "NUM_VOTERS is $NUM_VOTERS" >> /tmp/viveklog
echo "VN_NODE_PREFIX is $VN_NODE_PREFIX" >> /tmp/viveklog
echo "NUM_BLOCKMAKERS is $NUM_BLOCKMAKERS" >> /tmp/viveklog
echo "BM_NODE_PREFIX is $BM_NODE_PREFIX" >> /tmp/viveklog
echo "NUM_OBSERVERS is $NUM_OBSERVERS" >> /tmp/viveklog
echo "OB_NODE_PREFIX is $OB_NODE_PREFIX" >> /tmp/viveklog
echo "NODE_SEQNUM is $NODE_SEQNUM" >> /tmp/viveklog
echo "ADMIN_SITE_PORT is $ADMIN_SITE_PORT" >> /tmp/viveklog
echo "CAKESHOP_FQDN is $CAKESHOP_FQDN" >> /tmp/viveklog
echo "CAKESHOP_STARTING_PORT is $CAKESHOP_STARTING_PORT" >> /tmp/viveklog
