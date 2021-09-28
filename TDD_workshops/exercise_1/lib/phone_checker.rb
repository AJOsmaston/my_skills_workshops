class PhoneChecker
  def check(phone)
    return false if phone.length < 8
    return false if phone.length > 10
    
    true
  end
end