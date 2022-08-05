require('./app')

def display_list
  puts 'Welcome to School library App!'
  puts "
  Choose an option by entering a number:
  1 - List all books
  2 - List all people
  3 - Create a person
  4 - Create a book
  5 - Create a rental
  6 - List all rentals for a given person id
  7 - Exit"
end

def main
  app = App.new
  app.options
end

main
