
az version

az extension remove -n azure-cli-ml
az extension remove -n ml

az extension add -n ml -y

#az extension add --source https://azuremlsdktestpypi.blob.core.windows.net/wheels/azureml-v2-cli-e2e-test/72468942/ml-0.0.72468942-py3-none-any.whl --pip-extra-index-urls https://azuremlsdktestpypi.azureedge.net/azureml-v2-cli-e2e-test/72468942 --yes || {
#az extension add -n ml -y  || {
#    echo "az extension add -n ml -y failed..."; exit 1;
#}


# Use defaults if not passed by workflow inputs

GROUP1=${GROUP:-"kritifaujdar-rg"}

LOCATION1=${LOCATION:-"westus"}

WORKSPACE1=${WORKSPACE:-"kritifaujdar-ws"}

az configure --defaults group=$GROUP1 workspace=$WORKSPACE1 location=$LOCATION1

