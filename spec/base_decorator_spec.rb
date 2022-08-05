require_relative('spec_helper')

describe BaseDecorator do
  before :each do
    @person = Person.new(22, 'rwubakwanayoolivier')
  end

  context 'CapitalizeDecorator' do
    it 'capitalize first letter of name' do
      capitalizer = CapitalizeDecorator.new(@person)
      expect(capitalizer.correct_name).to eql('Rwubakwanayoolivier')
    end
  end
  context 'TrimmerDecorator' do
    it 'trim name with more than 10 character' do
      trimmer = TrimmerDecorator.new(@person)
      expect(trimmer.correct_name).to eql('rwubakwana')
      expect(trimmer.correct_name.length).to be <= 10
    end
  end
end
