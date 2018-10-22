class Team

attr_reader :team, :player, :points
attr_accessor :coach


  def initialize(team_name, players, coach_name)
    @team = team_name
    @player = players
    @coach = coach_name
    @points = 0
  end

  def add_player(new_player)
    return @player << new_player
  end

  def check_for_player(name)
    for member in @player
      return true if member == name
    end
    return false
  end

  def add_points(result)
    if result == "win"
      return @points += 3
    elsif result == "loss"
      return @points
    end
  end

end
