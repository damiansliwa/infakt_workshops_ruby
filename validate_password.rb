class ValidatePassword
  def initialize(password)
    @password = password
  end
  def perform
    regex = /^(?=.{8,24}$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@$#%&*+=:;?<>])(?!.*(.)\1\1).*/

    @password =~ regex ? true : false
  end
end
