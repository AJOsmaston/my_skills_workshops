require 'phone_checker'

describe PhoneChecker do
  phone_checker = PhoneChecker.new
  it "returns false if input == nil" do
    expect(
      phone_checker.check(nil)
      ).to eq false
  end 

  it "returns false if input is not a string" do
    expect(
      phone_checker.check(0123)
    ).to eq false
    
    expect(
      phone_checker.check(true)
    ).to eq false

    expect(
      phone_checker.check(:hello)
    ).to eq false

    expect(
      phone_checker.check([])
    ).to eq false
  end

  it "returns false if input string contains anything other than numbers" do
    expect(
      phone_checker.check("123 Hello world!")
    ).to eq false
  end

  it "returns false if input is shorter than 8 characters, or longer than 10" do
    expect(
      phone_checker.check("09385")
    ).to eq false

    expect(
      phone_checker.check("029384758695847")
    ).to eq false
  end

  it "returns true if input is 9 characters exactly" do
    expect(
      phone_checker.check("092384758")
    ).to eq true
  end
end