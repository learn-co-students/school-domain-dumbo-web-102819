class School
  def initialize (school_name)
    @name = school_name
    @roster = {}
  end

  attr_reader :roster

  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade (number)
    @roster[number]
  end

  def sort
    roster.reduce({}) do
        |memo, (grade, students)|
        memo[grade] = students.sort
        memo
      end
  end
end
