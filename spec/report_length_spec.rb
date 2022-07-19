require 'report_length'

RSpec.describe "report_length method" do
    it "returns number of characters in given string" do
      result = report_length("string")
      expect(result). to eq "This string was 6 characters long"
    end
end