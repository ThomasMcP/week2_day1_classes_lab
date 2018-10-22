require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../sports_class' )

class TestSportsCass < MiniTest::Test
  def test_get_team
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")

  expected = "Fife Flyers"
  actual = squad.team
  assert_equal(expected, actual)
  end

  def test_get_players
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")

  expected = players
  actual = squad.player
  assert_equal(expected, actual)
  end

  def test_get_coach
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")

  expected = "Coach Steve"
  actual = squad.coach
  assert_equal(expected, actual)
  end

  def test_change_coach
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")
  expected = "Coach Pavel"
  actual  = squad.coach = "Coach Pavel"
  assert_equal(expected, actual)
  end

  def test_add_new_player
    players =["Charlie", "Ben", "Oswald"]
    squad = Team.new("Fife Flyers", players, "Coach Steve")
    expected = players << "Susan"
    actual = squad.add_player("Susan")
    assert_equal(expected, actual)
  end

  def test_check_for_player__true
    players =["Charlie", "Ben", "Oswald"]
    squad = Team.new("Fife Flyers", players, "Coach Steve")
    expected = true
    actual = squad.check_for_player("Charlie")
    assert_equal(expected, actual)
  end

def test_check_for_player__false
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")
  expected = false
  actual = squad.check_for_player("Todd")
  assert_equal(expected, actual)
end

def test_for_points
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")
  expected = 0
  actual = squad.points
  assert_equal(expected, actual)
end

def test_result_add_points
  players =["Charlie", "Ben", "Oswald"]
  squad = Team.new("Fife Flyers", players, "Coach Steve")
  expected = 3
  actual = squad.add_points("win")
  assert_equal(expected, actual)
end




end
