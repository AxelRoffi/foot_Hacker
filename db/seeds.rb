Team.destroy_all

# TEAMS
teams_file_path = "db/external_data/teams_france_season_765_2016_2017.json"
serialized_teams = File.read(teams_file_path)
teams = JSON.parse(serialized_teams)
teams_data_array = teams["data"].map { |team_hash| team_hash.slice('id', 'name', 'logo_path') }

# GAMES (Fixtures in API)
fixtures_file_path = "db/external_data/fixtures_france_season_765_2016_2017.json"
serialized_fixtures = File.read(fixtures_file_path)
fixtures = JSON.parse(serialized_fixtures)
# ixtures_data_array = fixtures["data"]["fixtures"]["data"].map { |fixture_hash| fixture_hash.slice('id', 'localteam_id', 'visitorteam_id', 'time') }
datas = []
localteam = fixtures["data"]["fixtures"]["data"][0]["localteam_id"]
visitorteam = fixtures["data"]["fixtures"]["data"][0]["visitorteam_id"]
gamedate = fixtures["data"]["fixtures"]["data"][0]["time"]["starting_at"]["date"]
datas << localt
datas << visitort
datas << gamedate
