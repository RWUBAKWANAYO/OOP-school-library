require_relative('spec_helper')

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
  end

  context 'once we create a new book' do
    it 'should return Book object' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'should return correct title and author' do
      expect(@book.title).to eql 'Title'
      expect(@book.author).to eql 'Author'
    end
  end
end
