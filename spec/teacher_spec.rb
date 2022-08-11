require_relative('spec_helper')

describe 'Teacher with few input' do
  before :each do
    @teacher = Teacher.new('medecine', 22)
  end

  it 'return correct specialization, age' do
    expect(@teacher.specialization).to eql 'medecine'
    expect(@teacher.age).to be 22
  end

  it 'return default name' do
    expect(@teacher.name).to eql 'Unknown'
  end

  it 'return id in range of 0 - 1000' do
    expect(@teacher.id).to be_between(0, 1000).inclusive
  end

  it 'Allowed to use service' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end

describe 'Teacher with all input' do
  before :each do
    @teacher = Teacher.new('math', 30, 'doe', 68)
  end

  it 'return correct specialization, age, name, id' do
    expect(@teacher.specialization).to eql 'math'
    expect(@teacher.age).to be 30
    expect(@teacher.name).to eql 'doe'
    expect(@teacher.id).to eql 68
  end

  it 'Allowed to use service' do
    expect(@teacher.can_use_services?).to be_truthy
  end
end
