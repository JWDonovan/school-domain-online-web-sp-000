# code here!
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

  def grade(year)
    roster[year]
  end

  def sort
    roster.keys.sort

    roster.each do |grade, students|
      students.values.sort
    end

    roster
  end
end
