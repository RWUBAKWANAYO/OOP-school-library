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

