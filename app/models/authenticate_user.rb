class AuthenticateUser

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    nil
  end
end