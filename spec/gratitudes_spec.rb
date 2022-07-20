require 'gratitudes'

RSpec.describe Gratitudes do
    it "returns 0 gratitudes if none are inputted" do
        gratitudes = Gratitudes.new
        expect(gratitudes.format). to eq "Be grateful for: "
    end

    it "returns one gratitude" do
        gratitudes = Gratitudes.new
        gratitudes.add("dogs")
        expect(gratitudes.format). to eq "Be grateful for: dogs"
    end

    it "returns several gratitudes" do
        gratitudes = Gratitudes.new
        gratitudes.add("dogs")
        gratitudes.add("dogs")
        gratitudes.add("and more dogs")
        expect(gratitudes.format). to eq "Be grateful for: dogs, dogs, and more dogs"
    end
end