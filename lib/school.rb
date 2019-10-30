require 'pry'
class School

    attr_accessor :grade, :name, :roster
  
     
    def initialize (school_name)

        @school = school_name 
        @roster = {}
    end 
    
    def add_student (student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
        
    end 

    def grade (student_grade)
        @roster[student_grade]

    end 

    def sort 
        sorted_new = {}
        roster.each do |grade, name|
        sorted_new[grade] = name.sort
        end 
        sorted_new
        
    end 


end 


