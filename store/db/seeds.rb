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

Product.create!(
  title:          "The Dark Knight",
  description:    "When Batman, Gordon and Harvey Dent launch an assault on the mob, they let the clown out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes down to his level.",
  genre:          "Crime/Drama",
  director:       "Christopher Nolan",
  starring:       "Christian Bale, Heath Ledger",
  release_year:   "2008",
  runtime:        "152 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "9",
  viewer_count:   "1,176,839",
  image_url:      "DarkKnight.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Pulp Fiction",
  description:    "The lives of two mob hit men, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
  genre:          "Action/Crime/Drama",
  director:       "Quentin Tarantino",
  starring:       "Tim Roth, Amanda Plummer",
  release_year:   "1994",
  runtime:        "154 min",
  mpaa_rating:    "R",
  viewer_rating:  "9",
  viewer_count:   "931,992",
  image_url:      "PulpFiction.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Forrest Gump",
  description:    "Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.",
  genre:          "Crime/Drama/Thriller",
  director:       "Robert Zemeckis",
  starring:       "Tom Hanks, Rebecca Williams",
  release_year:   "1994",
  runtime:        "142 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.8",
  viewer_count:   "822,889",
  image_url:      "ForrestGump.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Goodfellas",
  description:    "Henry Hill and his friends work their way up through the mob hierarchy.",
  genre:          "Drama/Romance",
  director:       "Martin Scorsese",
  starring:       "Robert De Niro, Ray Liotta, Joe Pesci",
  release_year:   "1990",
  runtime:        "146 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.7",
  viewer_count:   "527,867",
  image_url:      "Goodfellas.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Matrix",
  description:    "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  genre:          "Crime | Drama",
  director:       "The Wachowski Brothers",
  starring:       "Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss",
  release_year:   "1999",
  runtime:        "136 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.7",
  viewer_count:   "860,783",
  image_url:      "Matrix.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Se7en",
  description:    "Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his modus operandi.",
  genre:          "Action | Sci-Fi",
  director:       "David Fincher",
  starring:       "Morgan Freeman, Brad Pitt",
  release_year:   "1995",
  runtime:        "127 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.7",
  viewer_count:   "708,299",
  image_url:      "Se7en.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Usual Suspects",
  description:    "A boat has been destroyed, criminals are dead, and the key to this mystery lies with the only survivor and his twisted, convoluted story beginning with five career crooks in a seemingly random police lineup.",
  genre:          "Crime | Mystery | Thriller",
  director:       "Bryan Singer",
  starring:       "Kevin Spacey, Gabriel Byrne, Stephen Baldwin",
  release_year:   "1995",
  runtime:        "106 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.7",
  viewer_count:   "535,482",
  image_url:      "UsualSuspects.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Saving Private Ryan",
  description:    "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.",
  genre:          "Crime | Drama | Thriller",
  director:       "Steven Spielberg",
  starring:       "Tom Hanks, Matt Damon, Vin Diesel",
  release_year:   "1998",
  runtime:        "169 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.6",
  viewer_count:   "613,923",
  image_url:      "SavingPrivateRyan.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Terminator 2: Judgment Day",
  description:    "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John, from a more advanced cyborg, made out of liquid metal.",
  genre:          "Action | Drama | War",
  director:       "James Cameron",
  starring:       "Arnold Schwarzenegger, Linda Hamilton",
  release_year:   "1991",
  runtime:        "137 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.5",
  viewer_count:   "535,590",
  image_url:      "Terminator2.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Gladiator",
  description:    "When a Roman general is betrayed and his family murdered by an emperor's corrupt son, he comes to Rome as a gladiator to seek revenge.",
  genre:          "Action | Sci-Fi | Thriller",
  director:       "Ridley Scott",
  starring:       "Russell Crowe, Joaquin Phoenix",
  release_year:   "2000",
  runtime:        "155 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.5",
  viewer_count:   "678,620",
  image_url:      "Gladiator.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Back to the Future",
  description:    "A teenager is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.",
  genre:          "Action | Adventure | Drama",
  director:       "Robert Zemeckis",
  starring:       "Michael J. Fox, Christopher Lloyd",
  release_year:   "1985",
  runtime:        "116 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8.5",
  viewer_count:   "490,073",
  image_url:      "BackToTheFuture.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Alien",
  description:    "The commercial vessel Nostromo receives a distress call from an unexplored planet. After searching for survivors, the crew heads home only to realize that a deadly bioform has joined them.",
  genre:          "Adventure | Comedy | Sci-Fi",
  director:       "Ridley Scott",
  starring:       "Sigourney Weaver, Tom Skerritt",
  release_year:   "1979",
  runtime:        "117 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.5",
  viewer_count:   "399,970",
  image_url:      "Alien.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Dark Knight Rises",
  description:    "Eight years after the Joker's reign of anarchy, the Dark Knight must return to defend Gotham City against the enigmatic jewel thief Catwoman and the ruthless mercenary Bane as the city teeters on the brink of complete annihilation.",
  genre:          "Horror | Sci-Fi",
  director:       "Christopher Nolan",
  starring:       "Christian Bale, Gary Oldman, Tom Hardy",
  release_year:   "2012",
  runtime:        "165 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.6",
  viewer_count:   "779,935",
  image_url:      "DarkKnightRises.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Sting",
  description:    "In 1930s Chicago, a young con man seeking revenge for his murdered partner teams up with a master of the big con to win a fortune from a criminal banker.",
  genre:          "Action | Crime | Thriller",
  director:       "George Roy Hill",
  starring:       "Paul Newman, Robert Redford",
  release_year:   "1973",
  runtime:        "129 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8.4",
  viewer_count:   "130,316",
  image_url:      "Sting.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Indiana Jones and the Last Crusade",
  description:    "When Dr. Henry Jones Sr. suddenly goes missing while pursuing the Holy Grail, eminent archaeologist Indiana Jones must follow in his father's footsteps and stop the Nazis.",
  genre:          "Comedy | Crime | Drama",
  director:       "Steven Spielberg",
  starring:       "Harrison Ford, Sean Connery",
  release_year:   "1989",
  runtime:        "127 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.3",
  viewer_count:   "371,816",
  image_url:      "IndianaJones.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Batman Begins",
  description:    "After training with his mentor, Batman begins his war on crime to free the crime-ridden Gotham City from corruption that the Scarecrow and the League of Shadows have cast upon it.",
  genre:          "Action | Adventure",
  director:       "Christopher Nolan",
  starring:       "Christian Bale, Michael Caine, Liam Neeson",
  release_year:   "2005",
  runtime:        "140 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.3",
  viewer_count:   "674,055",
  image_url:      "BatmanBegins.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Toy Story",
  description:    "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.",
  genre:          "Action | Crime | Thriller",
  director:       "John Lasseter",
  starring:       "Tom Hanks, Tim Allen",
  release_year:   "1995",
  runtime:        "81 min",
  mpaa_rating:    "G",
  viewer_rating:  "8.3",
  viewer_count:   "421,532",
  image_url:      "ToyStory.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Scarface",
  description:    "In 1980 Miami, a determined Cuban immigrant takes over a drug cartel while succumbing to greed.",
  genre:          "Animation | Adventure | Comedy",
  director:       "Brian De Palma",
  starring:       "Al Pacino, Steven Bauer",
  release_year:   "1983",
  runtime:        "170 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.3",
  viewer_count:   "388,004",
  image_url:      "Scarface.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Die Hard",
  description:    "John McClane, officer of the NYPD, tries to save wife Holly Gennaro and several others, taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.",
  genre:          "Crime | Drama",
  director:       "John McTiernan",
  starring:       "Bruce Willis, Bonnie Bedelia",
  release_year:   "1988",
  runtime:        "131 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.3",
  viewer_count:   "441,047",
  image_url:      "DieHard.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Great Escape",
  description:    "Allied P.O.W.s plan for several hundred of their number to escape from a German camp during World War II.",
  genre:          "Action | Thriller",
  director:       "John Sturges",
  starring:       "Steve McQueen, James Garner",
  release_year:   "1963",
  runtime:        "172 min",
  mpaa_rating:    "Unrated",
  viewer_rating:  "8.3",
  viewer_count:   "122,655",
  image_url:      "GreatEscape.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Heat",
  description:    "A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.",
  genre:          "Adventure | Drama | History",
  director:       "Michael Mann",
  starring:       "Al Pacino, Robert De Niro, Val Kilmer",
  release_year:   "1995",
  runtime:        "170 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.3",
  viewer_count:   "331,025",
  image_url:      "Heat.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Good Will Hunting",
  description:    "Will Hunting, a janitor at MIT, has a gift for mathematics but needs help from a psychologist to find direction in his life.",
  genre:          "Action | Crime | Drama",
  director:       "Gus Van Sant",
  starring:       "Matt Damon, Robin Williams, Ben Affleck",
  release_year:   "1998",
  runtime:        "126 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.2",
  viewer_count:   "425,566",
  image_url:      "GoodWillHunting.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Thing",
  description:    "Scientists in the Antarctic are confronted by a shape-shifting alien that assumes the appearance of the people that it kills.",
  genre:          "Drama",
  director:       "John Carpenter",
  starring:       "Kurt Russell, Wilford Brimley",
  release_year:   "1982",
  runtime:        "109 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.2",
  viewer_count:   "192,565",
  image_url:      "Thing.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Finding Nemo",
  description:    "After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.",
  genre:          "Horror | Mystery | Sci-Fi",
  director:       "Andrew Stanton",
  starring:       "Lee Unkrich,Albert Brooks, Ellen DeGeneres, Alexander Gould",
  release_year:   "2003",
  runtime:        "100 min",
  mpaa_rating:    "G",
  viewer_rating:  "8.2",
  viewer_count:   "463,533",
  image_url:      "FindingNemo.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Princess Bride",
  description:    "A classic fairy tale, with swordplay, giants, an evil prince, a beautiful princess, and yes, some kissing (as read by a kindly grandfather).",
  genre:          "Animation | Adventure | Comedy",
  director:       "Rob Reiner",
  starring:       "Cary Elwes, Mandy Patinkin",
  release_year:   "1987",
  runtime:        "98 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8.2",
  viewer_count:   "227,085",
  image_url:      "PrincessBride.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Wizard of Oz",
  description:    "Dorothy Gale is swept away to a magical land in a tornado and embarks on a quest to see the Wizard who can help her return home.",
  genre:          "Adventure | Comedy | Family",
  director:       "Victor Fleming",
  starring:       "Judy Garland, Frank Morgan",
  release_year:   "1939",
  runtime:        "102 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8.1",
  viewer_count:   "214,182",
  image_url:      "WizardOfOz.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Million Dollar Baby",
  description:    "A determined woman works with a hardened boxing trainer to become a professional.",
  genre:          "Adventure | Family | Fantasy",
  director:       "Clint Eastwood",
  starring:       "Clint Eastwood, Hilary Swank, Morgan Freeman",
  release_year:   "2005",
  runtime:        "132 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.1",
  viewer_count:   "341,792",
  image_url:      "MillionDollarBaby.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Twelve Monkeys",
  description:    "In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.",
  genre:          "Drama | Sport",
  director:       "Terry Gilliam",
  starring:       "Bruce Willis, Brad Pitt, Madeleine Stowe",
  release_year:   "1996",
  runtime:        "129 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.1",
  viewer_count:   "348,557",
  image_url:      "12Monkeys.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Gravity",
  description:    "A medical engineer and an astronaut work together to survive after a catastrophe destroys their shuttle and leaves them adrift in orbit.",
  genre:          "Mystery | Sci-Fi | Thriller",
  director:       "Alfonso CuarÛn",
  starring:       "Sandra Bullock, George Clooney",
  release_year:   "2013",
  runtime:        "91 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "8.1",
  viewer_count:   "375,352",
  image_url:      "Gravity.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Groundhog Day",
  description:    "A weatherman finds himself living the same day over and over again.",
  genre:          "Drama | Sci-Fi | Thriller",
  director:       "Harold Ramis",
  starring:       "Bill Murray, Andie MacDowell",
  release_year:   "1993",
  runtime:        "101 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8.1",
  viewer_count:   "315,857",
  image_url:      "GroundhogDay.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Dog Day Afternoon",
  description:    "A man robs a bank to pay for his lover's operation; it turns into a hostage situation and a media circus.",
  genre:          "Comedy | Drama | Fantasy",
  director:       "Sidney Lumet",
  starring:       "Al Pacino, Penelope Allen",
  release_year:   "1975",
  runtime:        "125 min",
  mpaa_rating:    "R",
  viewer_rating:  "8.1",
  viewer_count:   "140,566",
  image_url:      "DogDayAfternoon.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Stalag 17",
  description:    "When two escaping American World War II prisoners are killed, the German POW camp barracks black marketeer, J.J. Sefton, is suspected of being an informer.",
  genre:          "Crime | Drama",
  director:       "Billy Wilder",
  starring:       "William Holden, Don Taylor",
  release_year:   "1953",
  runtime:        "120 min",
  mpaa_rating:    "Not Rated",
  viewer_rating:  "8.1",
  viewer_count:   "36,715",
  image_url:      "Stalag17.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Truman Show",
  description:    "An insurance salesman/adjuster discovers his entire life is actually a T.V. show.",
  genre:          "Comedy | Drama | War",
  director:       "Peter Weir",
  starring:       "Jim Carrey, Laura Linney",
  release_year:   "1998",
  runtime:        "103 min",
  mpaa_rating:    "PG",
  viewer_rating:  "8",
  viewer_count:   "467,359",
  image_url:      "TrumanShow.jpg",
  price:          14.98
  )

Product.create!(
  title:          "X-Men: Days of Future Past",
  description:    "The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.",
  genre:          "Comedy | Drama | Sci-Fi",
  director:       "Bryan Singer",
  starring:       "Hugh Jackman, James McAvoy, Michael Fassbender",
  release_year:   "2014",
  runtime:        "131 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "9.3",
  viewer_count:   "5,698",
  image_url:      "XmenPast.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Maleficent",
  description:    "A vindictive fairy is driven to curse an infant princess only to realize the child may be the only one who can restore peace.",
  genre:          "Action | Adventure | Fantasy",
  director:       "Robert Stromberg",
  starring:       "Angelina Jolie, Elle Fanning",
  release_year:   "2014",
  runtime:        "97 min",
  mpaa_rating:    "PG",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "Maleficent.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Edge of Tomorrow",
  description:    "A soldier fighting in a war with aliens finds himself caught in a time loop of his last day in the battle, though he becomes better skilled along the way.",
  genre:          "Action | Adventure | Family",
  director:       "Doug Liman",
  starring:       "Tom Cruise, Emily Blunt",
  release_year:   "2014",
  runtime:        "113 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "EdgeOfTomorrow.jpg",
  price:          14.98
  )

Product.create!(
  title:          "How to Train Your Dragon 2",
  description:    "It's been five years since Hiccup and Toothless successfully united dragons and vikings on the island of Berk. While Astrid, Snotlout and the rest of the gang are challenging each other to dragon races (the island's new favorite contact sport), the now inseparable pair journey through the skies, charting unmapped territories and exploring new worlds. When one of their adventures leads to the discovery of a secret ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace. Now, Hiccup and Toothless must unite to stand up for what they believe while recognizing that only together do they have the power to change the future of both men and dragons.",
  genre:          "Action | Sci-Fi",
  director:       "Dean DeBlois",
  starring:       "Jay Baruchel, Kristen Wiig",
  release_year:   "2014",
  runtime:        "105 min",
  mpaa_rating:    "PG",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "TrainDragon2.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Sex Tape",
  description:    "A married couple wake up to discover that the sex tape they made the evening before has gone missing, leading to a frantic search for its whereabouts.",
  genre:          "Animation | Action | Adventure",
  director:       "Jake Kasdan",
  starring:       "Jason Segel, Cameron Diaz",
  release_year:   "2014",
  runtime:        "",
  mpaa_rating:    "",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "SexTape.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Planes: Fire & Rescue",
  description:    "When world-famous air racer Dusty learns that his engine is damaged and he may never race again, he must shift gears and is launched into the world of aerial firefighting. Dusty joins forces with veteran fire and rescue helicopter Blade Ranger and his team, a bunch of all-terrain vehicles known as The Smokejumpers. Together, the fearless team battles a massive wildfire, and Dusty learns what it takes to become a true hero.",
  genre:          "Comedy",
  director:       "Roberts Gannaway",
  starring:       "Dane Cook, Julie Bowen",
  release_year:   "2014",
  runtime:        "",
  mpaa_rating:    "",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "Planes2.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Jupiter Ascending",
  description:    "In the future, a young destitute human woman gets targeted for assassination by the Queen of the Universe, and begins her destiny to finish the Queen's reign.",
  genre:          "Animation | Adventure | Comedy",
  director:       "Andy Wachowski",
  starring:       "Lana Wachowski,Mila Kunis, Channing Tatum, Sean Bean",
  release_year:   "2014",
  runtime:        "",
  mpaa_rating:    "",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "JupiterAscending.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Guardians of the Galaxy",
  description:    "In the far reaches of space, an American pilot named Peter Quill finds himself the object of a manhunt after stealing an orb coveted by the villainous Ronan.",
  genre:          "Action | Adventure | Sci-Fi",
  director:       "James Gunn",
  starring:       "Chris Pratt, Vin Diesel, Bradley Cooper",
  release_year:   "2014",
  runtime:        "122 min",
  mpaa_rating:    "",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "GuardiansOfTheGalaxy.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Equalizer",
  description:    "A former black ops commando who faked his death for a quiet life in Boston comes out of his retirement to rescue a young girl and finds himself face to face with Russian gangsters.",
  genre:          "Action | Adventure | Sci-Fi",
  director:       "Antoine Fuqua",
  starring:       "Denzel Washington, ChloÎ Grace Moretz",
  release_year:   "2014",
  runtime:        "",
  mpaa_rating:    "",
  viewer_rating:  "",
  viewer_count:   "",
  image_url:      "Equalizer.jpg",
  price:          14.98
  )

Product.create!(
  title:          "The Bourne Identity",
  description:    "A man is picked up by a fishing boat, bullet-riddled and without memory, then races to elude assassins and recover from amnesia.",
  genre:          "Action | Crime | Thriller",
  director:       "Doug Liman",
  starring:       "Franka Potente, Matt Damon, Chris Cooper",
  release_year:   "2002",
  runtime:        "119 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "7.9",
  viewer_count:   "305,644",
  image_url:      "BourneIdentity.jpg",
  price:          14.98
  )

Product.create!(
  title:          "10 Things I Hate About You",
  description:    "A new kid must find a guy to date the meanest girl in school, the older sister of the girl he has a crush on, who cannot date until her older sister does.",
  genre:          "Action | Mystery | Thriller",
  director:       "Gil Junger",
  starring:       "Heath Ledger, Julia Stiles, Joseph Gordon-Levitt",
  release_year:   "1999",
  runtime:        "97 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "7.2",
  viewer_count:   "166,702",
  image_url:      "10Things.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Marley & Me",
  description:    "A family learns important life lessons from their adorable, but naughty and neurotic dog.",
  genre:          "Comedy | Drama | Romance",
  director:       "David Frankel",
  starring:       "Owen Wilson, Jennifer Aniston, Eric Dane",
  release_year:   "2008",
  runtime:        "115 min",
  mpaa_rating:    "PG",
  viewer_rating:  "7.1",
  viewer_count:   "92,341",
  image_url:      "MarleyMe.jpg",
  price:          14.98
  )

Product.create!(
  title:          "Avatar",
  description:    "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
  genre:          "Comedy | Drama | Family",
  director:       "James Cameron",
  starring:       "Sam Worthington, Zoe Saldana, Sigourney Weaver",
  release_year:   "2009",
  runtime:        "162 min",
  mpaa_rating:    "PG-13",
  viewer_rating:  "7.9",
  viewer_count:   "668,992",
  image_url:      "Avatar.jpg",
  price:          14.98
  )

Product.create!(
  title:          "A Bronx Tale",
  description:    "A father becomes worried when a local gangster befriends his son in the Bronx in the 1960s.",
  genre:          "Drama | History | Thriller",
  director:       "Robert De Niro",
  starring:       "Robert De Niro, Chazz Palminteri, Lillo Brancato",
  release_year:   "1993",
  runtime:        "121 min",
  mpaa_rating:    "R",
  viewer_rating:  "7.8",
  viewer_count:   "80,349",
  image_url:      "BronxTale.jpg",
  price:          14.98
  )
