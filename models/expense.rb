module Model
  class Expense
    def initialize(id, description, users, paid_by , amount, split_strategy)
      @id = id
      @description= description
      @users = users
      @paid_by = paid_by
      @amount = amount
      @split_strategy = split_strategy
      @currency = "$"
    end
  end
end