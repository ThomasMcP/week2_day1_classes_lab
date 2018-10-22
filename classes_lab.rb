class Student

  def name
    return @name
  end

def cohort
  return @cohort
end

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def change_student_name(new_name)
    @name = new_name
  end

  def change_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_fav_language(fav_language)
    return "I love " + fav_language
  end

end
