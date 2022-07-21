require('./person')
require('./student')
require('./teacher')
require('./capitalize_decorator')
require('./trimmer_decorator')
require('./classroom')
require('./book')
require('./rental')

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

#---------------------set up associations-------------------

john = Student.new('class1', 20, 'john')
doe = Student.new('class1', 18, 'doe')
classroom = Classroom.new('class1')
classroom.add_student(doe)
classroom.add_student(john)
puts('BEFORE SETTING THE CLASSROOM..........')
puts "Number of student in #{classroom.label} is: #{classroom.students.count} "
puts "john belongs to #{john.classroom.label}"
puts "doe belongs to #{doe.classroom.label}"
puts "Students in #{classroom.label}:"
puts classroom.students.map(&:name)
classroom.label = 'class2'
puts('AFTER SETTING THE CLASSROOM..........')
puts "Number of student in #{classroom.label} is: #{classroom.students.count} "
puts "john belongs to #{john.classroom.label}"
puts "doe belongs to #{doe.classroom.label}"
puts "Students in #{classroom.label}:"
puts classroom.students.map(&:name)

person1 = Person.new(22, 'maximilianus')
person2 = Person.new(18, 'Bob')
book = Book.new('Relativity Theory', 'Albert Einstein')
book.add_rental('2017-12-22', person1)
book.add_rental('2017-12-25', person1)
book.add_rental('2017-08-23', person2)
puts('Person1 rented a book')
puts "#{person1.rentals.count} times"
puts('At:')
puts person1.rentals.map(&:date)
puts('Person2 rented a book')
puts "#{person2.rentals.count} times"
puts('At:')
puts person2.rentals.map(&:date)
puts('History of book rental')
puts(book.rentals.map do |rental|
  "\n Date of rent: #{rental.date} \n
 Name of rental: #{rental.person.name}\n
 Book's name :#{rental.book.title}"
end)
