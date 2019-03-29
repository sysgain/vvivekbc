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
