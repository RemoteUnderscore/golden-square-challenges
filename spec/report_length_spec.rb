require 'report_length'

RSpec.describe "report_length method" do
  it "checks the string length if 10" do
    result = report_length(10)
    expect(result).to eq "This string was 10 characters long."
  end
  it "checks the string length if 0" do
    result = report_length(0)
    expect(result).to eq "This string was 0 characters long."
  end
  it "checks the string length if 999" do
    result = report_length(999)
    expect(result).to eq "This string was 999 characters long."
  end
  it "checks the string length if 1001" do
    result = report_length(1001)
    expect(result).to eq "This string was 1001 characters long."
  end
end