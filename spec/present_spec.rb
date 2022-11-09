require 'present'

RSpec.describe Present do

  it "passses if the number of wrapped presents equals the number of presents to unwrap" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6
   end

  it "fails if there are no wrapped presents" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
   end

  it "fails if there is already a wrapped present" do
    present = Present.new
    present.wrap(1)
    expect { present.wrap(1) }.to raise_error "A contents has already been wrapped."
  end
end