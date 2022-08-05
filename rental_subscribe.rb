require('./student')
require('./teacher')

module RentalSubscribe
  include RetrieveData
  def subscribe_person(index)
    selected_person = retrieve_people[index]
    case selected_person['role']
    when 'Student'

      Student.new(
        nil, selected_person['age'], selected_person['name'], selected_person['id'],
        parent_permission: selected_person['parent_permission']
      )

    when 'Teacher'
      Teacher.new(
        selected_person['specialization'], selected_person['age'], selected_person['name'], selected_person['id']
      )
    end
  end

  def subscribe_book(index)
    selected_book = retrieve_books[index]
    Book.new(selected_book['title'], selected_book['author'])
  end
end
