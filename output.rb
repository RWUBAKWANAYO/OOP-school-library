require('./person')
require('./student')
require('./teacher')
require('./capitalize_decorator')
require('./trimmer_decorator')

#---------------------add Person, Student and Teacher classes-------------------

test = Person.new(17)
puts test.instance_eval('of_age?', __FILE__, __LINE__)
puts test.can_use_services?
student = Student.new('class1', 14)
puts student.play_hooky
teacher = Teacher.new('medecine', 22)
puts teacher.can_use_services?

#---------------------decorate a class-------------------

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
