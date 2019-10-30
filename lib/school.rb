# code here!
require 'pry'
class School
    attr_accessor :roster, :name, :student
    def initialize(name) 
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        
        if @roster[grade]
            @roster[grade] << student
        else @roster[grade] = []
            @roster[grade] << student
        end
        # check to see if roster has the grade
        # if so, add student to that array
        # if not, create grade in roster equal to emptyarray
        # then add student
        
        
    end
    def grade(grade)
       @roster[grade]
    end

    def sort
       sorted_roster = {}
       @roster.each do |grade, student|
        sorted_roster[grade] = student.sort
       end
       sorted_roster

    end



    
end