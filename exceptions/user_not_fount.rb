
class UserNotFound < RuntimeError
  def initialize(msg = "User not found")
    super(msg)
  end
end