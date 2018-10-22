class Team

def get_team()
  return @team
end

def get_players
  return @player
end

def get_coach
  return @coach
end

def initialize(team_name, players, coach_name)
  @team = team_name
  @player = players
  @coach = coach_name
end

def change_coach(new_coach)
  return @coach = new_coach
end 

end
