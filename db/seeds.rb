# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



PageContent.create!([
  {name: "running_number", value: 1}
])

User.create!([
  {username: "super1", first_name: "Super", last_name: "Admin1", phone_number: "0123456781", email: "super1@prins.com", password: "@dmin!23", role: 0},
  {username: "super2", first_name: "Super", last_name: "Admin2", phone_number: "0123456782", email: "super2@prins.com", password: "@dmin!23", role: 0},
])

Tournament.create!([
  {title: "Chongqing Major", description: "Chongqing Major!!!", start_date: "2019-01-16", end_date: "2019-01-18", prize_1: "RM10000", info_1: "Cash", prize_2: "RM5000", info_2: "Cash", prize_3: "RM1000", info_3: "Cash", logo_url: "https://liquipedia.net/commons/images/f/f5/Chongqing_Major_2019.jpg"}
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
  {name: "The Bucharest Minor", description: "Region South America #3"}
])

Match.create!([
  {description: "Round Of 16 - Game 1", team_home_id: 17, team_away_id: 16, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 1},
  {description: "Round Of 16 - Game 2", team_home_id: 2, team_away_id: 15, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 2},
  {description: "Round Of 16 - Game 3", team_home_id: 3, team_away_id: 14, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 3},
  {description: "Round Of 16 - Game 4", team_home_id: 4, team_away_id: 13, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 4},
  {description: "Round Of 16 - Game 5", team_home_id: 5, team_away_id: 12, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 5},
  {description: "Round Of 16 - Game 6", team_home_id: 6, team_away_id: 11, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 6},
  {description: "Round Of 16 - Game 7", team_home_id: 7, team_away_id: 10, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 7},
  {description: "Round Of 16 - Game 8", team_home_id: 8, team_away_id: 9, match_start: "2019-01-18 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 8},
  {description: "Quarter Final - Game 1", match_start: "2019-01-19 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 9},
  {description: "Quarter Final - Game 2", match_start: "2019-01-19 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 10},
  {description: "Quarter Final - Game 3", match_start: "2019-01-19 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 11},
  {description: "Quarter Final - Game 4", match_start: "2019-01-19 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 12},
  {description: "Semi Final - Game 1", match_start: "2019-01-20 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 13},
  {description: "Semi Final - Game 2", match_start: "2019-01-20 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 14},
  {description: "The Bronze", match_start: "2019-01-21 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 15},
  {description: "The Final", match_start: "2019-01-21 15:00:00", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 16}
])

MatchPrediction.create!([
])






  
