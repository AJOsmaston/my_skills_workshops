require 'phone_checker'

describe PhoneChecker do
  phone_checker = PhoneChecker.new
  it 'should be invalid if less than 8 digits' do
    # expect(__).to(eq(__))
    expect(
      phone_checker.check("012")
      ).to(eq(false))
    expect(phone_checker.check("09473")).to(eq(false)) 
  end
  
  it 'should be invalid if more than 10 digits' do
    expect(phone_checker.check("847294586987")).to(eq(false))
  end

  it 'should be valid if 9 digits' do
    expect(phone_checker.check("958473867")).to(eq(true))
  end
  
end

