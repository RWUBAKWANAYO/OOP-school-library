require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, name = 'Unknown', id = nil)
    super(age, name, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
