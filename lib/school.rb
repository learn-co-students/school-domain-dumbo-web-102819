
class School
    attr_accessor :name, :roster
    
    #The following code intializes the instance variables 
    #name and roster

    def initialize(name)
      @name = name
      @roster = {}
    end 
    
    #The following code adds students to the roster based
    #on which grade they are in
    def add_student(student, level)
      roster[level] ||= []
      roster[level] << student
    end 

    def grade(level)
        roster.find do |x, y| 
          if x == level
            return y 
          end 
        end 
      end 
      
    
    