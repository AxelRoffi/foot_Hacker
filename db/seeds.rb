Game.destroy_all
Player.destroy_all
Team.destroy_all

# TEAMS
teams_file_path = "db/external_data/teams_france_season_765_2016_2017.json"
serialized_teams = File.read(teams_file_path)
teams = JSON.parse(serialized_teams)
# teams_data_array = teams["data"].map { |team_hash| team_hash.slice('id', 'name', 'logo_path') }

# # GAMES (Fixtures in API)
fixtures_file_path = "db/external_data/fixtures_france_season_765_2016_2017.json"
serialized_fixtures = File.read(fixtures_file_path)
fixtures = JSON.parse(serialized_fixtures)

#Players (Players in API)
players_file_path = "db/external_data/fixture_lineup_france_2016_2017.json"
serialized_players = File.read(players_file_path)
players = JSON.parse(serialized_players)
# # ixtures_data_array = fixtures["data"]["fixtures"]["data"].map { |fixture_hash| fixture_hash.slice('id', 'localteam_id', 'visitorteam_id', 'time') }
# datas = []
# localteam = fixtures["data"]["fixtures"]["data"][0]["localteam_id"]
# visitorteam = fixtures["data"]["fixtures"]["data"][0]["visitorteam_id"]
# gamedate = fixtures["data"]["fixtures"]["data"][0]["time"]["starting_at"]["date"]
# datas << localteam
# datas << visitorteam
# datas << gamedate

teams["data"].each do |raw_team|
  name = raw_team["name"]
  logo_path = raw_team["logo_path"]
  api_id = raw_team["id"]

  Team.create(name: name, logo_path: logo_path, api_id: api_id)
end

fixtures["data"]["fixtures"]["data"].each do |raw_fixture|
  localteam = raw_fixture["localteam_id"]

  visitorteam = raw_fixture["visitorteam_id"]

  date = Date.parse raw_fixture["time"]["starting_at"]["date"]


  lteam = Team.find_by(api_id: localteam).id
  vteam = Team.find_by(api_id: visitorteam).id

  score_lteam = raw_fixture["scores"]["localteam_score"]
  score_vteam = raw_fixture["scores"]["visitorteam_score"]


  Game.create(local_team_id: lteam, visitor_team_id: vteam, datetime: date, local_team_score: score_lteam, visitor_team_score: score_vteam)


end

games = players["data"]["fixtures"]["data"]

games.each do |game|
  game_appearances = game["lineup"]["data"]

  game_appearances.each do |player|
    team = Team.find_by(api_id: player["team_id"])
    Player.create(
      last_name: player["player_name"],
      api_id: player["player_id"],
      team: team
    ) unless Player.find_by(api_id: player["player_id"])
  end
end


