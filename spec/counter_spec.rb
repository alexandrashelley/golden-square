require 'counter'

RSpec.describe "counter class" do
    it "returns a count of zero if no number is inputted" do
        counter = Counter.new
        expect(counter.report). to eq "Counted to 0 so far."
    end
    
    it "reports a count of initial counter + inputted value" do
      counter = Counter.new
      counter.add(3)
      expect(counter.report). to eq "Counted to 3 so far."
    end
end
