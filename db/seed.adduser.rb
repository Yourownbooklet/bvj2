p "seed add user started"

users = User.create([
  {
    email: 'klant0@bvj.nl',
    first_name: 'Customer',
    last_name: 'Zero van de honderd',
    password: '123456',
    streetname: 'De dr. van Langestraat',
    streetnumber: '123',
    number_extension: '3 hoog',
    postalcode: '1234AB',
    city: 'Groottestad',
    country: 'Nederland',
    phonenumber: '000-1234567',
    geaddresseerde: 'Mijn Nichtje',
    streetname2: 'De allerlangstestraat',
    streetnumber2: '123',
    number2_extension: '3hoog',
    postalcode2: '6789YZ',
    city2: 'De allergrootstestad',
    country2: 'Nederland',
    afleveradreshetzelfde: false
  }
])

p "seed done"
