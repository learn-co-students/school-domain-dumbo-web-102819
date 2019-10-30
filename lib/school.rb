#require 'pry'
class School
    attr_accessor :roster, :name

    def initialize(school_name)
        @name = school_name
        @roster = {} 
        puts @roster
    end
    
    def add_student(name, grade)
        if @roster.key?(grade)
            #roster has a grade key, add to it
            @roster[grade].push(name)
        else
             #roster does not have the grade key, create one
             @roster[grade] = [name]
        end
     end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        sorted_hash = {}
        roster.each{|grade, name|
        sorted_hash[grade] = name.sort
        #binding.pry
    }
        sorted_hash
    end
end
