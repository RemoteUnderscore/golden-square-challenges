require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "checks codeword if 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "checks codeword if 'dog'" do
    result = check_codeword("dog")
    expect(result).to eq "WRONG!"
  end
  it "checks codeword if 'house'" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
end
