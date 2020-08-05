module Models
  class User
    attr_accessor :id, :name, :email

    def initialize(id, name=nil, email=nil)
      @id = id
      @name = name
      @email = email
    end

  end
end