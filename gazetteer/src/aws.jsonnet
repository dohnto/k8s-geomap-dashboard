// Source: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html
local regions = [
  {
    key: 'us-east-2',
    name: 'US East (Ohio)',
    wikiSlug: 'Ohio',
  },
  {
    key: 'us-east-1',
    name: 'US East (N. Virginia)',
    wikiSlug: 'Northern_Virginia',
  },
  {
    key: 'us-west-1',
    name: 'US West (N. California)',
    wikiSlug: 'Northern_California',
    // Source: https://en.wikipedia.org/wiki/Northern_California
    // Source: https://geohack.toolforge.org/geohack.php?pagename=Northern_California&params=37_09_58_N_119_26_58_W_
    latitude: 37.166111,
    longitude: -119.449444,
  },
  {
    key: 'us-west-2',
    name: 'US West (Oregon)',
    wikiSlug: 'Oregon',
  },
  {
    key: 'af-south-1',
    name: 'Africa (Cape Town)',
    wikiSlug: 'Cape_Town',
  },
  {
    key: 'ap-east-1',
    name: 'Asia Pacific (Hong Kong)',
    wikiSlug: 'Hong_Kong',
  },
  {
    key: 'ap-south-2',
    name: 'Asia Pacific (Hyderabad)',
    wikiSlug: 'Hyderabad',
  },
  {
    key: 'ap-southeast-3',
    name: 'Asia Pacific (Jakarta)',
    wikiSlug: 'Jakarta',
  },
  {
    key: 'ap-southeast-4',
    name: 'Asia Pacific (Melbourne)',
    wikiSlug: 'Melbourne',
  },
  {
    key: 'ap-south-1',
    name: 'Asia Pacific (Mumbai)',
    wikiSlug: 'Mumbai',
  },
  {
    key: 'ap-northeast-3',
    name: 'Asia Pacific (Osaka)',
    wikiSlug: 'Osaka',
  },
  {
    key: 'ap-northeast-2',
    name: 'Asia Pacific (Seoul)',
    wikiSlug: 'Seoul',
  },
  {
    key: 'ap-southeast-1',
    name: 'Asia Pacific (Singapore)',
    wikiSlug: 'Singapore',
  },
  {
    key: 'ap-southeast-2',
    name: 'Asia Pacific (Sydney)',
    wikiSlug: 'Sydney',
  },
  {
    key: 'ap-northeast-1',
    name: 'Asia Pacific (Tokyo)',
    wikiSlug: 'Tokyo',
  },
  {
    key: 'ca-central-1',
    name: 'Canada (Central)',
    wikiSlug: 'Central_Canada',
  },
  {
    key: 'eu-central-1',
    name: 'Europe (Frankfurt)',
    wikiSlug: 'Frankfurt',
  },
  {
    key: 'eu-west-1',
    name: 'Europe (Ireland)',
    wikiSlug: 'Ireland',
  },
  {
    key: 'eu-west-2',
    name: 'Europe (London)',
    wikiSlug: 'London',
  },
  {
    key: 'eu-south-1',
    name: 'Europe (Milan)',
    wikiSlug: 'Milan',
  },
  {
    key: 'eu-west-3',
    name: 'Europe (Paris)',
    wikiSlug: 'Paris',
  },
  {
    key: 'eu-south-2',
    name: 'Europe (Spain)',
    wikiSlug: 'Spain',
  },
  {
    key: 'eu-north-1',
    name: 'Europe (Stockholm)',
    wikiSlug: 'Stockholm',
  },
  {
    key: 'eu-central-2',
    name: 'Europe (Zurich)',
    wikiSlug: 'Zurich',
  },
  {
    key: 'il-central-1',
    name: 'Israel (Tel Aviv)',
    wikiSlug: 'Tel_Aviv',
  },
  {
    key: 'me-south-1',
    name: 'Middle East (Bahrain)',
    wikiSlug: 'Bahrain',
  },
  {
    key: 'me-central-1',
    name: 'Middle East (UAE)',
    wikiSlug: 'United_Arab_Emirates',
  },
  {
    key: 'sa-east-1',
    name: 'South America (São Paulo)',
    wikiSlug: 'São_Paulo',
  },
];

std.map(function(r) r { provider: 'aws' }, regions)
