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
  {username: "admin1", first_name: "Normal", last_name: "Admin1", phone_number: "0123456783", email: "admin1@prins.com", password: "qwerasdf", role: 1},
  {username: "admin2", first_name: "Normal", last_name: "Admin2", phone_number: "0123456784", email: "admin2@prins.com", password: "qwerasdf", role: 1},
  {username: "user1", first_name: "Normal", last_name: "User1", phone_number: "0123456785", email: "user1@prins.com", password: "qwerasdf", role: 2},
  {username: "user2", first_name: "Normal", last_name: "User2", phone_number: "0123456786", email: "user2@prins.com", password: "qwerasdf", role: 2},
  {username: "user3", first_name: "Normal", last_name: "User3", phone_number: "0123456787", email: "user3@prins.com", password: "qwerasdf", role: 2},
  {username: "user4", first_name: "Normal", last_name: "User4", phone_number: "0123456788", email: "user4@prins.com", password: "qwerasdf", role: 2}
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
  {name: "Team Secret", description: "This is Alpha Team"},
  {name: "Team Liquid", description: "This is Beta Team"},
  {name: "Alliance", description: "This is Gamma Team"},
  {name: "NoPangolier", description: "This is Delta Team"},
  {name: "Virtus.pro", description: "This is Epsilon Team"},
  {name: "Team Aster", description: "This is Zeta Team"},
  {name: "Vici Gaming", description: "This is Eta Team"},
  {name: "PSG.LGD", description: "This is Theta Team"},
  {name: "Fnatic", description: "This is Iota Team"},
  {name: "TNC Predator", description: "This is Kappa Team"},
  {name: "J.Storm", description: "This is Lambda Team"},
  {name: "Forward Gaming", description: "This is Mu Team"},
  {name: "Evil Geniuses", description: "This is Nu Team"},
  {name: "paiN Gaming", description: "This is Xi Team"},
  {name: "Thunder Predator", description: "This is Omicron Team"},
  {name: "The Bucharest Minor", description: "This is Pi Team"}
])

Match.create!([
  {description: "Round Of 16 - Game 1", team_home_id: 17, team_away_id: 16, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 1},
  {description: "Round Of 16 - Game 2", team_home_id: 2, team_away_id: 15, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 2},
  {description: "Round Of 16 - Game 3", team_home_id: 3, team_away_id: 14, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 3},
  {description: "Round Of 16 - Game 4", team_home_id: 4, team_away_id: 13, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 4},
  {description: "Round Of 16 - Game 5", team_home_id: 5, team_away_id: 12, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 5},
  {description: "Round Of 16 - Game 6", team_home_id: 6, team_away_id: 11, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 6},
  {description: "Round Of 16 - Game 7", team_home_id: 7, team_away_id: 10, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 7},
  {description: "Round Of 16 - Game 8", team_home_id: 8, team_away_id: 9, question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 8},
  {description: "Quarter Final - Game 1", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 9},
  {description: "Quarter Final - Game 2", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 10},
  {description: "Quarter Final - Game 3", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 11},
  {description: "Quarter Final - Game 4", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 12},
  {description: "Semi Final - Game 1", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 13},
  {description: "Semi Final - Game 2", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 14},
  {description: "The Bronze", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 15},
  {description: "The Final", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?", tournament_id: 1, bracket_id: 16}
])

MatchPrediction.create!([
  {user_id: 5, match_id: 1, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 6, match_id: 2, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 7, match_id: 3, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 8, match_id: 4, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 5, match_id: 5, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 6, match_id: 6, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 7, match_id: 7, answer_1: "Yes", answer_2: "No", answer_3: "No" },
  {user_id: 8, match_id: 8, answer_1: "Yes", answer_2: "No", answer_3: "No" }
])






  
