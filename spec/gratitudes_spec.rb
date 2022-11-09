require 'gratitudes'

RSpec.describe Gratitudes do

  it "checks the string of gratitudes if one word" do
    gratitudes = Gratitudes.new
    gratitudes.add("Health")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Health"
  end

  it "checks the string of gratitudes if more than one word" do
    gratitudes = Gratitudes.new
    gratitudes.add("Health")
    gratitudes.add("Life")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Health, Life"
  end

  it "checks the string of gratitudes if zero words" do
    gratitudes = Gratitudes.new
    gratitudes.add("")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: "
  end
end