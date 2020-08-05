module Models
  class Split
    attr_accessor :id, :user, :amount

    def initialize(id, user, amount)
      @id = id
      @user = user
      @amount = amount
    end

  end
end