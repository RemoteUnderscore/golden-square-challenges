require 'report_length'

RSpec.describe "report_length method" do
  it "checks the string length if 'Mike'" do
    result = report_length("Mike")
    expect(result).to eq "This string was 4 characters long."
  end
  it "checks the string length if 'Testing 1-2-3" do
    result = report_length("Testing 1-2-3")
    expect(result).to eq "This string was 13 characters long."
  end
  it "checks the string length if ''" do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end
  it "checks the string length if 'supercalifragilistic" do
    result = report_length("supercalifragilistic")
    expect(result).to eq "This string was 20 characters long."
  end
end