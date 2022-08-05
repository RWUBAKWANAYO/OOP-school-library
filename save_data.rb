require('json')
require('./retrieve_data')

module SaveData
  include RetrieveData
  def save_person(person)
    data = retrieve_people

    if person.instance_of?(Student)
      data.push(
        { id: person.id, role: 'Student', name: person.name, age: person.age,
          parent_permission: person.parent_permission }
      )

    elsif person.instance_of?(Teacher)
      data.push(
        { id: person.id, role: 'Teacher', age: person.age,
          name: person.name, specialization: person.specialization }
      )
    end
    File.write('./storage/people.json', JSON.generate(data))
  end

  def save_book(book)
    data = retrieve_books
    data.push({ title: book.title, author: book.author })
    File.write('./storage/books.json', JSON.generate(data))
  end

  def save_rental(rental)
    data = retrieve_rentals
    data.push({ date: rental.date, person_id: rental.person.id,
                book: { title: rental.book.title, author: rental.book.author } })
    File.write('./storage/rentals.json', JSON.generate(data))
  end
end
