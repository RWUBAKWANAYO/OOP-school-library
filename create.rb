require('./user_input')
class Create
  attr_accessor :people, :books

  def initialize(people, books, rentals)
    @people = people
    @books = books
    @rentals = rentals
  end

  def create_person
    selected_person, name, age = person_info
    case selected_person
    when 1
      student_permission = person_permission
      @people.push(Student.new(nil, age, name, parent_permission: student_permission))
    when 2
      specialization = person_specialization
      @people.push(Teacher.new(specialization, age, name))
    end
    puts 'Person created successfully.'
  end

  def create_book
    title, author = book_info
    @books.push(Book.new(title, author))
    puts 'Book created successfully.'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    selected_book = rentals_book(@books)

    puts 'Select a person from the following list by number (Not ID): '
    selected_person = rentals_person(@people)

    print 'Date: '
    provided_date = rentals_date

    @rentals.push(Rental.new(provided_date, people[selected_person], books[selected_book]))
    puts 'Rental created successfully.'
  end
end
