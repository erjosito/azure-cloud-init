HOMEDIR=~/azure_metadata
mkdir $HOMEDIR
metadata=$(curl -H Metadata:true "http://169.254.169.254/metadata/instance?api-version=2017-04-02")
echo $metadata >$HOMEDIR/azure_metadata.json
jq '.Compute.Name' >$HOMEDIR/hostname
