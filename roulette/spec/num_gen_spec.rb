require 'num_gen'

describe NumberGenerator do
  it 'produces numbers between 1 and 10' do
    expect(subject.generate).to be_between 1, 10
  end
end
