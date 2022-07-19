require('./nameable')

class BaseDecorator < Nameable
  def initialize(nameable_obj)
    super()
    @nameable_obj = nameable_obj
  end

  def correct_name
    @nameable_obj.correct_name
  end
end
