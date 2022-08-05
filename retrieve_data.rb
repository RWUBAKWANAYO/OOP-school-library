require 'json'
module RetrieveData
  def retrieve_people
    people = []
    people = JSON.parse(File.read('./storage/people.json')) if File.exist?('./storage/people.json')
    people
  end

  def retrieve_books
    books = []
    books = JSON.parse(File.read('./storage/books.json')) if File.exist?('./storage/books.json')
    books
  end

  def retrieve_rentals
    rentals = []
    rentals = JSON.parse(File.read('./storage/rentals.json')) if File.exist?('./storage/rentals.json')
    rentals
  end
end
