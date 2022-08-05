require './Person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'Unknown', id = nil, parent_permission: true)
    super(age, name, id: id, parent_permission: parent_permission)
    self.classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
