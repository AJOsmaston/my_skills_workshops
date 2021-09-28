class PhoneChecker
  def check(phone)
    return false if phone.nil?
    return false if !phone.is_a? String
    return false if /\d/.match(phone) == false
    true
  end
end