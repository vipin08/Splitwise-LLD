require './models/user'
require './exceptions/user_not_fount'
module Utility
  class UserUtility
    include Models

    @@users = {} # user in memmory db

    #register user into db
    def register(id, name=nil, email)
      user = User.new(id, name, email)
      @@users[id] = user
      return user
    end

    def get_user id
      raise UserNotFound if @@users[id].nil?
      return @@users[id]
    end

    def all_users
      return @@users
    end

  end
end