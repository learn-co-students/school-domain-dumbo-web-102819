require 'pry'

class School 
  attr_accessor :name, :roster 
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end 
  def add_student(student_name, student_grade)
    if !@roster[student_grade]
      @roster[student_grade] = []
    end 
    @roster[student_grade] << student_name 
  end 
  def grade(student_grade)
    return @roster[student_grade]
  end
  def sort 
    @roster.each do |grade, students|
      @roster[grade] = students.sort 
    end 
  end
end 