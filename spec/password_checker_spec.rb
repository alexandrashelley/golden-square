require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if the password is more than or equal to 8" do
    result = PasswordChecker.new
    expect(result.check("elephant")).to eq true
  end

  it "fails when password is less than 8 characters" do
    result = PasswordChecker.new
    expect { (result.check("house")) }.to raise_error "Invalid password. Must be 8+ characters"
  end

  it "throws an error when nothing is inputted" do
    result = PasswordChecker.new
    expect { (result.check()) }. to raise_error ArgumentError
  end

  it "throws an error when user inputs integers" do
    result = PasswordChecker.new
    expect { (result.check(1234)) }. to raise_error NoMethodError # because .length method can only be called on strings
  end
end
  