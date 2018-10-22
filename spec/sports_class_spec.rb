require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../sports_class' )

class TestSportsCass < MiniTest::Test
  def test_get_team
  players =["Charlie", "Ben", "Oswald"]
  team = Team.new("Fife Flyers", players, "Coach Steve")

  expected = "Fife Flyers"
  actual = team.get_team
  assert_equal(expected, actual)
  end

  def test_get_players
  players =["Charlie", "Ben", "Oswald"]
  team = Team.new("Fife Flyers", players, "Coach Steve")

  expected = players
  actual = team.get_players
  assert_equal(expected, actual)
  end

  def test_get_coach
  players =["Charlie", "Ben", "Oswald"]
  team = Team.new("Fife Flyers", players, "Coach Steve")

  expected = "Coach Steve"
  actual = team.get_coach
  assert_equal(expected, actual)
  end

  def test_change_coach
  players =["Charlie", "Ben", "Oswald"]
  team = Team.new("Fife Flyers", players, "Coach Steve")
  expected = "Coach Pavel"
  actual  = team.change_coach("Coach Pavel")
  assert_equal(expected, actual)
  end

end
