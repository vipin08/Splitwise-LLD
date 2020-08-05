require './models/user'
require './models/expense'
require './exceptions/user_not_fount'
module Utility
  class ExpenseUtility
    include Models
    @@expense = {} #in mempory expense db
    def add(id, description, users, paid_by, group_id, amount,split_strategy)
      expense = Expense.new(id, description, users, paid_by, group_id, amount,split_strategy)
      expense.split(equal)
    end


  end
end
