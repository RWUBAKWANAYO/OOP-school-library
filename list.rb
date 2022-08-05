require('./user_input')
require('./retrieve_data')

class List
  include RetrieveData

  def list_all_people
    if retrieve_people.empty?
      puts 'There is no person!'
    else
      retrieve_people.each do |person|
        puts "[#{person['role']}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
      end
    end
  end

  def list_all_books
    if retrieve_books.empty?
      puts 'There is no book!'
    else
      retrieve_books.each { |book| puts "Title: '#{book['title']}', Author: #{book['author']}" }
    end
  end

  def list_all_rentals_by_id
    person_id = rentals_person_id
    retrieve_rentals.map do |rental|
      if rental['person_id'] == person_id
        puts "Date: #{rental['date']}, Book: #{rental['book']['title']} by #{rental['book']['author']}"
      end
    end
  end
end
