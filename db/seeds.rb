puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  207859835,
    category:     'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  204376907,
    category:     'italian'
  },
  {
    name:         'Sushi Dai',
    address:      'Tsukiji, Tokyo',
    phone_number:  4826374,
    category:     'japanese'
  },
  {
    name:         'Le Gavroche',
    address:      'Landaaaaan Town',
    phone_number:  21749037,
    category:     'french'
  },
  {
    name:         'Dragon & Pearl',
    address:      'H-west, Pembrokeshire, Wales',
    phone_number:  1348865243,
    category:     'chinese'
  },
  {
    name:         'Belgique',
    address:      'NQ, Manchester, England',
    phone_number:  161539732,
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
