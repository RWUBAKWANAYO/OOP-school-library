def person_info
  print 'Do you want to create a student (1) or a teacher (2): '
  selected_person = gets.chomp.to_i
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  [selected_person, name, age]
end

def person_permission
  print 'Has parent permission? [Y/N]: '
  provided_permission = gets.chomp.capitalize
  student_permission = true if provided_permission == 'Y'
  student_permission = false if provided_permission == 'N'
end

def person_specialization
  print 'Specialization: '
  specialization = gets.chomp
end

def book_info
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  [title, author]
end

def rentals_book(books)
  books.map.with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
  selected_book = gets.chomp.to_i
end

def rentals_person(people)
  puts 'Select a person from the following list by number (Not ID): '
  people.map.with_index do |person, index|
    puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  selected_person = gets.chomp.to_i
end

def rentals_date
  provided_date = gets.chomp
end

def rentals_person_id
  print 'ID of person: '
  person_id = gets.chomp.to_i
end
