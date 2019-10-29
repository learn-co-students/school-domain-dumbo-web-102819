# code here!
class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    roster = {}
    
    @roster.map do |grade, names|
      #puts "Grade: #{names}"
      roster[grade]=names.sort
    end
    roster
  end
end