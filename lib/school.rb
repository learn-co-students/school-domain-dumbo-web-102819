class School

    school = School

    attr_reader :name 
    attr_accessor :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name, grade)
       if @roster[grade]
        @roster[grade] << student_name
       else
        @roster[grade] = []
        @roster[grade] << student_name
        end
    
    end

#check to see if roster has grade
#if so add student to that array
#if not create grade in roster equal to empty array
#then add student

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |key, value|
            sorted_roster[key] = value.sort
        end
        sorted_roster
    end

    
end