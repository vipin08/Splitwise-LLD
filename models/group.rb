require_relative 'user'
module Models
  class Group
    attr_accessor :id, :user_id, :name, :users
    def initialize id, user_id, name
      @id = id
      @user_id = user_id
      @name = name
      @users = []
    end

    def add user_id
      @users.append(user_id)
      @users.sort!
    end

    def remove user_id
      @users.delete_if { |x| x == user_id }
      @users.sort!
    end
  end
end
