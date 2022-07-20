require 'present'

RSpec.describe Present do
    it "wraps and unwraps the contents passed" do
      present = Present.new
      present.wrap("pony")
      expect(present.unwrap). to eq "pony"
    end

    it "fails if contents haven't yet been wrapped" do
        present = Present.new
        expect { (present.unwrap) }.to raise_error "No contents have been wrapped."
    end
end

  #  it "fails if contents have already been wrapped" do
 #       present = Present.new
  #      present.wrap("pony")
#        expect { (present.wrap("pony")) }. to raise_error "A contents has already been wrapped."
 #   end
#end
#