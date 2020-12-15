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

  # def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end

  def sort
    roster[grade].sort

    roster.collect do |grade, students|
      roster[grade][students].sort
    end
  end
end
