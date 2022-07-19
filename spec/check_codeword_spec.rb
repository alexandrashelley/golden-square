require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "codeword is correct" do
      result = check_codeword("horse")
      expect(result). to eq "Correct! Come in."
    end

    it "codeword is almost correct" do
      result = check_codeword("house")
      expect(result). to eq "Close, but nope." 
    end

    it "codeword is incorrect" do
      result = check_codeword("dog")
      expect(result). to eq "WRONG!"
    end
end