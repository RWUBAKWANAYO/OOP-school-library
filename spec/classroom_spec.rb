require_relative 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('class2')
  end

  context 'once we create classroom' do
    it 'return classroom object' do
      expect(@classroom).to be_an_instance_of(Classroom)
    end

    it "return the classroo's label" do
      expect(@classroom.label).to eql('class2')
    end
  end
end
