# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PageContent.create!([
  {name: "Default_Q1", value: "Which team will triumph and be victorious in this series?"},
  {name: "Default_Q2", value: "Which player will have most death?"},
  {name: "Default_Q3", value: "Which player will have the best score/KDA? (kill, death and assist)"},
  {name: "Default_Q4", value: "Which team to first score 10 kills?"},
  {name: "Default_Q5", value: "Which team will produce the MVP of the match?"}
])

User.create!([
  {username: "pickemd2", first_name: "Super", last_name: "Admin", phone_number: "0135159945", identity_number: "883456-14-1234", email: "pickemd2@gmail.com", password: "@dmin!23", role: 0},
  {username: "admin1", first_name: "PickemD2", last_name: "Admin1", phone_number: "0123456781", identity_number: "123456-14-1234", email: "admin1@esports.com", password: "@dmin!23", role: 1},
  {username: "admin2", first_name: "PickemD2", last_name: "Admin2", phone_number: "0123456782", identity_number: "223456-14-1234",email: "admin2@esports.com", password: "@dmin!23", role: 1},
  {username: "tester", first_name: "Tester", last_name: "Account", phone_number: "0123456783", identity_number: "223452-14-1235",email: "tester@esports.com", password: "Test!234", role: 2}
])

text = "The International 2019 is the concluding tournament of the Dota Pro Circuit and the ninth annual edition of The International. The tournament will be held on Chinese soil for the first time, as it moves to the Mercedes-Benz Arena in Shanghai. Following the previous year format, a point system based on official sponsored Majors and Minors will be used to determine the twelve invites to The International."

Tournament.create!([
  {title: "The International 2019", description: text, start_date: "2019-08-15", end_date: "2019-08-25"}
])

Bracket.create!([
  {title: "Round Of 16 Match 1", code: "R16-M1"},
  {title: "Round Of 16 Match 2", code: "R16-M2"},
  {title: "Round Of 16 Match 3", code: "R16-M3"},
  {title: "Round Of 16 Match 4", code: "R16-M4"},
  {title: "Round Of 16 Match 5", code: "R16-M5"},
  {title: "Round Of 16 Match 6", code: "R16-M6"},
  {title: "Round Of 16 Match 7", code: "R16-M7"},
  {title: "Round Of 16 Match 8", code: "R16-M8"},
  {title: "Quarter Finals Match 1", code: "QF-M1"},
  {title: "Quarter Finals Match 2", code: "QF-M2"},
  {title: "Quarter Finals Match 3", code: "QF-M3"},
  {title: "Quarter Finals Match 4", code: "QF-M4"},
  {title: "Semi Finals Match 1", code: "SF-M1"},
  {title: "Semi Finals Match 2", code: "SF-M2"},
  {title: "Bronze Match", code: "Bronze"},
  {title: "The Final", code: "Final"}
])

Team.create!([
  {name: "TBA", description: "Team is not assigned"},
  {name: "Team Secret", description: "Region Europe #1"},
  {name: "Team Liquid", description: "Region Europe #2"},
  {name: "Alliance", description: "Region Europe #3"},
  {name: "NoPangolier", description: "Region CIS #1"},
  {name: "Virtus.pro", description: "Region CIS #2"},
  {name: "Team Aster", description: "Region China #1"},
  {name: "Vici Gaming", description: "Region China #2"},
  {name: "PSG.LGD", description: "Region China #3"},
  {name: "Fnatic", description: "Region SEA #1"},
  {name: "TNC Predator", description: "Region SEA #2"},
  {name: "J.Storm", description: "Region North America #1"},
  {name: "Forward Gaming", description: "Region North America #2"},
  {name: "Evil Geniuses", description: "Region North America #3"},
  {name: "paiN Gaming", description: "Region South America #1"},
  {name: "Thunder Predator", description: "Region South America #2"},
  {name: "Ninjas In Pyjamas", description: ""},
  {name: "OG", description: ""},
  {name: "Keen Gaming", description: ""},
  {name: "Infamous", description: ""},
  {name: "Mineski", description: ""},
  {name: "The Bucharest Minor", description: "Region South America #3"}
])

Match.create!([
  {description: "Round Of 16 - Game 1", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 1},
  {description: "Round Of 16 - Game 2", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 2},
  {description: "Round Of 16 - Game 3", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 3},
  {description: "Round Of 16 - Game 4", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 4},
  {description: "Round Of 16 - Game 5", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 5},
  {description: "Round Of 16 - Game 6", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 6},
  {description: "Round Of 16 - Game 7", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 7},
  {description: "Round Of 16 - Game 8", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 8},
  {description: "Quarter Final - Game 1", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 9},
  {description: "Quarter Final - Game 2", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 10},
  {description: "Quarter Final - Game 3", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 11},
  {description: "Quarter Final - Game 4", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 12},
  {description: "Semi Final - Game 1", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 13},
  {description: "Semi Final - Game 2", match_start: "2019-08-20 14:00:00", tournament_id: 1, bracket_id: 14},
  {description: "The Bronze", match_start: "2019-08-25 14:00:00", tournament_id: 1, bracket_id: 15},
  {description: "The Final", match_start: "2019-08-25 14:00:00", tournament_id: 1, bracket_id: 16}
])

MatchPrediction.create!([
])






  
