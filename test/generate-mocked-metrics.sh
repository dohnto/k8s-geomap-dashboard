#!/bin/bash

aws_regions=(
    us-east-1
    us-east-2
    us-west-1
    us-west-2
    af-south-1
    ap-east-1
    ap-south-2
    ap-southeast-3
    ap-southeast-4
    ap-south-1
    ap-northeast-3
    ap-northeast-2
    ap-southeast-1
    ap-southeast-2
    ap-northeast-1
    ca-central-1
    eu-central-1
    eu-west-1
    eu-west-2
    eu-south-1
    eu-west-3
    eu-south-2
    eu-north-1
    eu-central-2
    il-central-1
    me-south-1
    me-central-1
    sa-east-1

    us-gov-east-1
    us-gov-west-1
)

gcp_regions=(
    asia-east1
    asia-east2
    asia-northeast1
    asia-northeast2
    asia-northeast3
    asia-south1
    asia-south2
    asia-southeast1
    asia-southeast2
    australia-southeast1
    australia-southeast2
    europe-central2
    europe-north1
    europe-southwest1
    europe-west1
    europe-west10
    europe-west12
    europe-west2
    europe-west3
    europe-west4
    europe-west6
    europe-west8
    europe-west9
    me-central1
    me-central2
    me-west1
    northamerica-northeast1
    northamerica-northeast2
    southamerica-east1
    southamerica-west1
    us-central1
    us-east1
    us-east4
    us-east5
    us-south1
    us-west1
    us-west2
    us-west3
    us-west4
)

# https://azuretracks.com/2021/04/current-azure-region-names-reference/
azure_regions=(
    eastus
    eastus2
    southcentralus
    westus2
    westus3
    australiaeast
    southeastasia
    northeurope
    swedencentral
    uksouth
    westeurope
    centralus
    southafricanorth
    centralindia
    eastasia
    japaneast
    koreacentral
    canadacentral
    francecentral
    germanywestcentral
    norwayeast
    switzerlandnorth
    uaenorth
    brazilsouth
    centraluseuap
    eastus2euap
    qatarcentral
    asia
    asiapacific
    australia
    brazil
    canada
    europe
    france
    germany
    global
    india
    japan
    korea
    norway
    singapore
    southafrica
    switzerland
    uae
    uk
    unitedstates
    unitedstateseuap
    brazilus
    eastusstg
    northcentralus
    westus
    jioindiawest
    devfabric
    westcentralus
    southafricawest
    australiacentral
    australiacentral2
    australiasoutheast
    japanwest
    jioindiacentral
    koreasouth
    southindia
    westindia
    canadaeast
    francesouth
    germanynorth
    norwaywest
    switzerlandwest
    ukwest
    uaecentral
    brazilsoutheast
)

# https://docs.oracle.com/en-us/iaas/Content/General/Concepts/regions.htm
oracle_regions=(
    ap-sydney-1
    ap-melbourne-1
    sa-saopaulo-1
    sa-vinhedo-1
    ca-montreal-1
    ca-toronto-1
    sa-santiago-1
    sa-bogota-1
    eu-paris-1
    eu-marseille-1
    eu-frankfurt-1
    ap-hyderabad-1
    ap-mumbai-1
    il-jerusalem-1
    eu-milan-1
    ap-osaka-1
    ap-tokyo-1
    mx-queretaro-1
    mx-monterrey-1
    eu-amsterdam-1
    me-jeddah-1
    eu-jovanovac-1
    ap-singapore-1
    af-johannesburg-1
    ap-seoul-1
    ap-chuncheon-1
    eu-madrid-1
    eu-stockholm-1
    eu-zurich-1
    me-abudhabi-1
    me-dubai-1
    uk-london-1
    uk-cardiff-1
    us-ashburn-1
    us-chicago-1
    us-phoenix-1
    us-sanjose-1
)

function gen() {
    local provider=$1
    shift
    local regions=("$@")
    local output_file=node-exporter/kube_node_labels.$provider.prom

    echo $output_file
    echo -n > $output_file

    local i=0
    for region in ${regions[@]}; do
        local node_count=$(echo $((1 + $RANDOM % 1000)))
        while [ $node_count -gt 0 ]; do
            i=$((i+1))
            node_count=$(($node_count-1))
            echo "kube_node_labels{label_topology_kubernetes_io_region=\"$region\", node=\"node$i\"} 1" >> $output_file
        done
    done

}

gen aws    "${aws_regions[@]}"
gen gcp    "${gcp_regions[@]}"
gen azure  "${azure_regions[@]}"
gen oracle "${oracle_regions[@]}"
