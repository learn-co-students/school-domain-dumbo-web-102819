class School 
attr_reader :roster 
attr_accessor :name
@@all =[]

    def initialize(name)
        @name = name 
        @roster = {}
        @@all << self

    end 

    def add_student(name,grade)
    if  @roster[grade]
        @roster[grade] << name 
    else 
        @roster[grade] = [name]
    end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
      @roster.each do |grade, student|
        @roster[grade] = student.sort 
      end
    end 
end 
