require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../classes_lab' )

class TestCodeClan < MiniTest::Test
  def test_get_student_name
    student1 = Student.new("Tom", "E26")
    expected = "Tom"
    actual = student1.name
    assert_equal(expected, actual)
  end

  def test_get_student_cohort
    student1 = Student.new("Tom", "E26")
    expected = "E26"
    actual = student1.cohort
    assert_equal(expected, actual)
  end

  def test_change_student_name
    student1 = Student.new("Tom", "E26")
    student1.change_student_name("James")
    expected = "James"
    actual = student1.name
    assert_equal(expected, actual)
  end

  def test_change_student_cohort
    student1 = Student.new("Tom", "E26")
    student1.change_student_cohort("E25")
    expected = "E25"
    actual = student1.cohort
    assert_equal(expected, actual)
  end

  def test_student_can_talk
    student1 = Student.new("Tom", "E26")
    expected = "I can talk!"
    actual = student1.talk
    assert_equal(expected, actual)
  end

  def test_student_fav_language
    student1 = Student.new("Tom", "E26")
    expected = "I love Ruby"
    actual = student1.say_fav_language("Ruby")
    assert_equal(expected, actual)
  end



end
