class ValidatePassword
  def initialize(password)
    @password = password
  end
  def perform

    regex = /^(?=.{8,24}$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*/

    if @password =~ regex
      return true
    else
      return false
    end
  end
end
