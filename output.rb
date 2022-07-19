require('./person')
require('./student')
require('./teacher')

test = Person.new(17)
puts test.instance_eval('of_age?', __FILE__, __LINE__)
puts test.can_use_services?
student = Student.new('class1', 14)
puts student.play_hooky
teacher = Teacher.new('medecine', 22)
puts teacher.can_use_services?
