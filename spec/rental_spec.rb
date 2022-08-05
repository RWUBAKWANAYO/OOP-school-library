require_relative('spec_helper')

describe Rental do
  before :each do
    @person = Person.new(32, 'Doe')
    @book = Book.new('BookTitle', 'BookAuthor')
    @date = '01-01-2001'
    @rental = Rental.new(@date, @person, @book)
  end

  it 'return Rental object' do
    expect(@rental).to be_an_instance_of(Rental)
  end

  it 'Rentals array is not empty' do
    expect(@person.rentals).not_to be_empty
    expect(@book.rentals).not_to be_empty
  end

  it "return correct rental's person" do
    expect(@rental.person.age).to eql(32)
    expect(@rental.person.name).to eql('Doe')
    expect(@rental.person.id).to be_between(0, 1000).inclusive
    expect(@rental.person.parent_permission).to eql(true)
  end

  it "return correct rental's book" do
    expect(@rental.book.title).to eql('BookTitle')
    expect(@rental.book.author).to eql('BookAuthor')
  end

  it 'Return many rental' do
    @rental = Rental.new(@date, @person, @book)
    expect(@person.rentals.length).to eql(2)
    @rental = Rental.new(@date, @person, @book)
    expect(@book.rentals.length).to eql(3)
  end
end
