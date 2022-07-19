require 'string_builder'

RSpec.describe StringBuilder do
  it "returns an empty string if nothing is inputted" do
    string_builder = StringBuilder.new
    expect(string_builder.output). to eq ""
  end

  it "returns a length of 0 if nothing is inputted" do
    string_builder = StringBuilder.new
    expect(string_builder.size). to eq 0
  end

context "given several strings" do
    it "returns strings joined together" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        string_builder.add("dog")
        expect(string_builder.output). to eq "hellodog"
    end

    it "returns the size of that string" do
        string_builder = StringBuilder.new
        string_builder.add("hello")
        string_builder.add("dog")
        expect(string_builder.size). to eq 8
    end
end
end