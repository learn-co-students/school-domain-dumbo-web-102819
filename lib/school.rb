# code here!
class School
    
  attr_reader :name, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if(!@roster[grade])
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end
  
  def grade(num)
    @roster[num]
  end

  def roster
    @roster
  end
  
  def sort
    hash = {}
    @roster.each do |k, v|
      hash[k] = v.sort
    end
    hash
  end
  
end