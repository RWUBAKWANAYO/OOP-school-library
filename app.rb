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

