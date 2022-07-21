require('./book')
require('./student')
require('./teacher')
require('./rental')

def list_all_books(books)
  if books.empty?
    puts 'There is no book!'
  else
    books.each { |book| puts "Title: '#{book.title}', Author: #{book.author}" }
  end
end

def list_all_people(people)
  if people.empty?
    puts 'There is no person!'
  else
    people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
  end
end

def create_person(people)
  print 'Do you want to create a student (1) or a teacher (2): '
  selected_person = gets.chomp.to_i
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  case selected_person
  when 1
    print 'Has parent permission? [Y/N]: '
    provided_permission = gets.chomp.capitalize
    student_permission = true if provided_permission == 'Y'
    student_permission = false if provided_permission == 'N'
    people.push(Student.new(nil, age, name, parent_permission: student_permission))
  when 2
    print 'Specialization: '
    specialization = gets.chomp
    people.push(Teacher.new(specialization, age, name))
  end
  puts 'Person created successfully.'
end

