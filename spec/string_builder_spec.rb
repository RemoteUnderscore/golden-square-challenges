require 'string_builder'

RSpec.describe StringBuilder do
  it "checks the string being built" do
    stringbuilder = StringBuilder.new
    stringbuilder.add("The")
    result = stringbuilder.output
    expect(result).to eq "The"
end

  it "checks the string being built" do
    stringbuilder = StringBuilder.new
    stringbuilder.add("The ")
    stringbuilder.add("Best ")
    stringbuilder.add("Times")
    result = stringbuilder.output
    expect(result).to eq "The Best Times"
  end

  it "checks the length of the string" do
    stringbuilder = StringBuilder.new
    stringbuilder.add("Once")
    result = stringbuilder.size
    expect(result).to eq 4
  end

  it "checks the string being built if 0 characters" do
    stringbuilder = StringBuilder.new
    stringbuilder.add("")
    result = stringbuilder.output
    expect(result).to eq ""
  end
end