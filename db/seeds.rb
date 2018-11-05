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

Team.create!([
  {name: "Team Alpha", description: "This is Alpha Team"},
  {name: "Team Beta", description: "This is Beta Team"},
  {name: "Team Gamma", description: "This is Gamma Team"},
  {name: "Team Delta", description: "This is Delta Team"},
  {name: "Team Epsilon", description: "This is Epsilon Team"},
  {name: "Team Zeta", description: "This is Zeta Team"},
  {name: "Team Eta", description: "This is Eta Team"},
  {name: "Team Theta", description: "This is Theta Team"},
  {name: "Team Iota", description: "This is Iota Team"},
  {name: "Team Kappa", description: "This is Kappa Team"},
  {name: "Team Lambda", description: "This is Lambda Team"},
  {name: "Team Mu", description: "This is Mu Team"},
  {name: "Team Nu", description: "This is Nu Team"},
  {name: "Team Xi", description: "This is Xi Team"},
  {name: "Team Omicron", description: "This is Omicron Team"},
  {name: "Team Pi", description: "This is Pi Team"}
])

Match.create!([
  {description: "Round Of 16 - Game 1", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 2", team_home: "Gamma", team_away: "Epsilon", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 3", team_home: "Kappa", team_away: "Zeta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 4", team_home: "Delta", team_away: "Eta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 5", team_home: "Iota", team_away: "Thete", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 6", team_home: "Mu", team_away: "Nu", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 7", team_home: "Xi", team_away: "Pi", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Round Of 16 - Game 8", team_home: "Omicron", team_away: "Lambda", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Quarter Final - Game 1", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Quarter Final - Game 2", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Quarter Final - Game 3", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Quarter Final - Game 4", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Semi Final - Game 1", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "Semi Final - Game 2", team_home: "Alpha", team_away: "Beta", question_1: "What is this?", question_2: "What is that?", question_3: "Who will win?"},
  {description: "The Final"}
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






  
