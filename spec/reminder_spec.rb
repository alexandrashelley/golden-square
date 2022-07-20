require 'reminder'

RSpec.describe Reminder do
    context "when no task is set" do
        it "fails" do
            reminder = Reminder.new("Kay")
            expect { reminder.remind() }.to raise_error "No reminder set!"
        end
    end
end

# we use expect { ... } with curly braces to wrap the code that causes the error
# which makes it easier for RSpec to "catch" the error