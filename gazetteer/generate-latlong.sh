#!/bin/bash

input=cloud-regions.jsonnet
tmpfile=$(mktemp)
output=cloud-regions.json

get() {
    region_key=$1
    key=$2
    jsonnet $input | jq -r --arg region_key "$region_key" --arg key "$key" '.[] | select(.key == $region_key) | .[$key]'
}


get_wikislug() {
    key=$1
    get $key wikiSlug
}


get_name() {
    key=$1
    get $key name
}


echo "// NOTE: Do not edit. This file was autogeneted at $(date)" > $tmpfile
echo "[" >> $tmpfile

for key in $(jsonnet $input | jq -r '.[].key'); do
    slug=$(get $key wikiSlug)
    echo "=== $key ($slug)"
    coords_text=$(curl -s https://en.wikipedia.org/wiki/$slug | grep wgCoordinates)
    lat=$(echo "$coords_text" | grep -oP '"lat":[0-9.-]+' | cut -f2 -d:)
    lon=$(echo "$coords_text" | grep -oP '"lon":[0-9.-]+' | cut -f2 -d:)

    echo $slug: lat=$lat lon=$lon
    if [[ -z "$lat" || -z "$lon" ]]; then
        echo "WARN: Cannot automatically get coordinates for: $key"
    fi
    lat=${lat:-$(get $key latitude)}
    lon=${lon:-$(get $key longitude)}
    echo "  {key: \"$key\", latitude: $lat, longitude: $lon, name: \"$(get $key name)\"}," >> $tmpfile
done

echo "]" >> $tmpfile
jsonnet $tmpfile > $output
