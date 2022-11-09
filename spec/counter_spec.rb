require 'counter'

RSpec.describe Counter do
  it "counts numbers so far" do
    counter = Counter.new
    counter.add(3)
    result = counter.report
    expect(result).to eq "Counted to 3 so far."
  end
  it "counts numbers so far" do
    counter = Counter.new
    counter.add(8001)
    result = counter.report
    expect(result).to eq "Counted to 8001 so far."
  end
  it "counts numbers so far" do
    counter = Counter.new
    counter.add(0)
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end
end
