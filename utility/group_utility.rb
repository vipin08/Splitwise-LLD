require './models/group'
require './exceptions/group_not_fount'
require './exceptions/user_not_fount'
module Utility
  class GroupUtility
    include Models
    @@group = {} # group in memeory db

    def initialize
      @user = UserUtility.new
    end

    # create group into db
    def create(id, user_id, name)
      user = get_user(user_id)
      group = Group.new(id, user.id, name)
      @@group[id] = group
      group.add(user.id)
      return "Group Created"
    end

    def add_user group_id, user_id
      user = get_user user_id
      group = get_group group_id
      group.add(user.id)
      return "User added"
    end

    def remove_user user_id, group_id
      user = get_user user_id
      group = get_group group_id
      group.remove(user.id)
      return "User removed"
    end

    def user_list group_id
      group = get_group group_id
      return group.users
    end

    def get_user user_id
      return @user.get_user(user_id)
    end

    def get_group group_id
      raise GroupNotFound if @@group[group_id].nil?
      return @@group[group_id]
    end

  end
end
