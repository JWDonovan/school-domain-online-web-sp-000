# code here!
class School
  def initialize(name)
    @name = name
    @roster = { :grade, :students }
  end

  def add_student(:grade, :student)
    self.roster[:grade] << :student
  end
end
