CONN_STRING="DefaultEndpointsProtocol=http;AccountName={{ env "AZURE_STORAGE_ACCOUNT" }};AccountKey={{ env "AZURE_STORAGE_KEY" }};BlobEndpoint={{ env "AZURE_ENDPOINT" }};"

echo $CONN_STRING

az storage container create -n tempo --connection-string $CONN_STRING
az storage container create -n loki --connection-string $CONN_STRING
az storage container create -n loki-ruler --connection-string $CONN_STRING
