require('./book')
require('./student')
require('./teacher')
require('./rental')
require('./list')
require('./create')
class App
  def initialize
    @list = List.new
    @create = Create.new
  end

  def options
    loop do
      display_list
      case gets.chomp.to_i
      when 1
        @list.list_all_books
      when 2
        @list.list_all_people
      when 3
        @create.create_person
      when 4
        @create.create_book
      when 5
        @create.create_rental
      when 6
        @list.list_all_rentals_by_id
      else
        break
      end
    end
    display_list
  end
end
