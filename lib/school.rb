# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [] 
            @roster[grade] << name
        end 
    end 

    def grade(student_name)
        @roster[student_name]
    end 

    def sort
        @roster.each {|grade,name| name.sort!}
    
    end 

end 