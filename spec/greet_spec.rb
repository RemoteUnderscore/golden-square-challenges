require 'greet'

RSpec.describe "greet method" do
  it "returns the string name Mike" do
    result = greet("Mike")
    expect(result).to eq "Hello, Mike!"
  end
end

