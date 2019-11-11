class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @sort = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sort
  end


end
