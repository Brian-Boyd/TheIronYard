# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Product.delete_all
Product.create!(
  title:          'The Shawshank Redemption',
  description:    'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
  genre:          'Crime | Drama',
  director:       'Frank Darabont',
  starring:       'Tim Robbins, Morgan Freeman',
  release_year:   '1994',
  runtime:        '142',
  mpaa_rating:    'R',
  viewer_rating:  '9.3',
  viewer_count:   '1,212,557',
  image_url:      'ShawshankRedemption.jpg',
  price:          14.98
  )

Product.create!(
  title:          'Dazed and Confused',
  description:    'The adventures of incoming high school and junior high students on the last day of school, in May of 1976.',
  genre:          'Comedy | Drama',
  director:       'Richard Linklater',
  starring:       'Jason London, Wiley Wiggins, Matthew McConaughey',
  release_year:   '1993',
  runtime:        '102',
  mpaa_rating:    'R',
  viewer_rating:  '7.7',
  viewer_count:   '90,441',
  image_url:      'DazedAndConfused.jpg',
  price:          12.45
  )

Product.create!(
  title:          'Black Hawk Down',
  description:    '123 elite U.S. soldiers drop into Somalia to capture two top lieutenants of a renegade warlord and find themselves in a desperate battle with a large force of heavily-armed Somalis.',
  genre:          'Drama | History | Thriller',
  director:       'Ridley Scott',
  starring:       'Josh Hartnett, Ewan McGregor, Tom Sizemore',
  release_year:   '2001',
  runtime:        '144',
  mpaa_rating:    'R',
  viewer_rating:  '7.7',
  viewer_count:   '231,056',
  image_url:      'BlackHawkDown.jpg',
  price:          14.98
  )
