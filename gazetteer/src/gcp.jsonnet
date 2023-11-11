// Source: https://cloud.google.com/compute/docs/regions-zones
local regions = [
  {
    key: 'asia-east1',
    name: 'Changhua County, Taiwan, APAC',
    wikiSlug: 'Changhua_County',
  },
  {
    key: 'asia-east2',
    name: 'Hong Kong, APAC',
    wikiSlug: 'Hong_Kong',
  },
  {
    key: 'asia-northeast1',
    name: 'Tokyo, Japan, APAC',
    wikiSlug: 'Tokyo',
  },
  {
    key: 'asia-northeast2',
    name: 'Osaka, Japan, APAC',
    wikiSlug: 'Osaka',
  },
  {
    key: 'asia-northeast3',
    name: 'Seoul, South Korea, APAC',
    wikiSlug: 'Seoul',
  },
  {
    key: 'asia-south1',
    name: 'Mumbai, India, APAC',
    wikiSlug: 'Mumbai',
  },
  {
    key: 'asia-south2',
    name: 'Delhi, India, APAC',
    wikiSlug: 'Delhi',
  },
  {
    key: 'asia-southeast1',
    name: 'Jurong West, Singapore, APAC',
    wikiSlug: 'Jurong_West',
    latitude: 1.339722,
    longitude: 103.704444,
  },
  {
    key: 'asia-southeast2',
    name: 'Jakarta, Indonesia, APAC',
    wikiSlug: 'Jakarta',
  },
  {
    key: 'australia-southeast1',
    name: 'Sydney, Australia, APAC',
    wikiSlug: 'Sydney',
  },
  {
    key: 'australia-southeast2',
    name: 'Melbourne, Australia, APAC',
    wikiSlug: 'Melbourne',
  },
  {
    key: 'europe-central2',
    name: 'Warsaw, Poland, Europe',
    wikiSlug: 'Warsaw',
  },
  {
    key: 'europe-north1',
    name: 'Hamina, Finland, Europe',
    wikiSlug: 'Hamina',
  },
  {
    key: 'europe-southwest1',
    name: 'Madrid, Spain, Europe',
    wikiSlug: 'Madrid',
    latitude: 40.41694444444444,
    longitude: -3.7033333333333336,
  },
  {
    key: 'europe-west1',
    name: 'St. Ghislain, Belgium, Europe',
    wikiSlug: 'Saint-Ghislain',
  },
  {
    key: 'europe-west10',
    name: 'Berlin, Germany, Europe',
    wikiSlug: 'Berlin',
  },
  {
    key: 'europe-west12',
    name: 'Turin, Italy, Europe',
    wikiSlug: 'Turin',
  },
  {
    key: 'europe-west2',
    name: 'London, England, Europe',
    wikiSlug: 'London',
  },
  {
    key: 'europe-west3',
    name: 'Frankfurt, Germany, Europe',
    wikiSlug: 'Frankfurt',
  },
  {
    key: 'europe-west4',
    name: 'Eemshaven, Netherlands, Europe',
    wikiSlug: 'Eemshaven',
  },
  {
    key: 'europe-west6',
    name: 'Zurich, Switzerland, Europe',
    wikiSlug: 'Zürich',
  },
  {
    key: 'europe-west8',
    name: 'Milan, Italy, Europe',
    wikiSlug: 'Milan',
  },
  {
    key: 'europe-west9',
    name: 'Paris, France, Europe',
    wikiSlug: 'Paris',
  },
  {
    key: 'me-central1',
    name: 'Doha, Qatar, Middle East',
    wikiSlug: 'Doha',
  },
  {
    key: 'me-central2',
    name: 'Dammam, Saudi Arabia, Middle East',
    wikiSlug: 'Dammam',
  },
  {
    key: 'me-west1',
    name: 'Tel Aviv, Israel, Middle East',
    wikiSlug: 'Tel_Aviv',
  },
  {
    key: 'northamerica-northeast1',
    name: 'Montréal, Québec, North America',
    wikiSlug: 'Montreal',
  },
  {
    key: 'northamerica-northeast2',
    name: 'Toronto, Ontario, North America',
    wikiSlug: 'Toronto',
  },
  {
    key: 'southamerica-east1',
    name: 'Osasco, São Paulo, Brazil, South America',
    wikiSlug: 'Osasco',
  },
  {
    key: 'southamerica-west1',
    name: 'Santiago, Chile, South America',
    wikiSlug: 'Santiago',
  },
  {
    key: 'us-central1',
    name: 'Council Bluffs, Iowa, North America',
    wikiSlug: 'Council_Bluffs,_Iowa',
  },
  {
    key: 'us-east1',
    name: 'Moncks Corner, South Carolina, North America',
    wikiSlug: 'Moncks_Corner,_South_Carolina',
  },
  {
    key: 'us-east4',
    name: 'Ashburn, Virginia, North America',
    wikiSlug: 'Ashburn,_Virginia',
  },
  {
    key: 'us-east5',
    name: 'Columbus, Ohio, North America',
    wikiSlug: 'Columbus,_Ohio',
  },
  {
    key: 'us-south1',
    name: 'Dallas, Texas, North America',
    wikiSlug: 'Dallas',
  },
  {
    key: 'us-west1',
    name: 'The Dalles, Oregon, North America',
    wikiSlug: 'The_Dalles,_Oregon',
  },
  {
    key: 'us-west2',
    name: 'Los Angeles, California, North America',
    wikiSlug: 'Los_Angeles',
  },
  {
    key: 'us-west3',
    name: 'Salt Lake City, Utah, North America',
    wikiSlug: 'Salt_Lake_City',
  },
  {
    key: 'us-west4',
    name: 'Las Vegas, Nevada, North America',
    wikiSlug: 'Las_Vegas',
  },
];

std.map(function(r) r { provider: 'gcp' }, regions)
