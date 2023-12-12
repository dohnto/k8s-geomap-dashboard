INDIVUAL_FILES=aws.json gcp.json azure.json oracle.json

all: cloud-regions.json

cloud-regions.json: $(INDIVUAL_FILES)
	echo "local aws = import 'aws.json'; local gcp = import 'gcp.json'; local azure = import 'azure.json'; local oracle = import 'oracle.json'; aws + gcp + azure + oracle" | jsonnet - > cloud-regions.json

aws.json:
	bash generate-latlong.sh aws

gcp.json:
	bash generate-latlong.sh gcp

azure.json:
	az account list-locations --query "[?not_null(metadata.latitude) && metadata.latitude!='0'] .{key:name, name:regionalDisplayName, provider: 'azure', latitude:metadata.latitude, longitude:metadata.longitude} " | jq  '.[].latitude |= tonumber | .[].longitude |= tonumber' > azure.json

oracle.json:
	bash generate-latlong.sh oracle

clean:
	rm -f $(INDIVUAL_FILES) cloud-regions.json
