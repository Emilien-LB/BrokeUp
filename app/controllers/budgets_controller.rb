class BudgetsController < ApplicationController

  def calculate_budget(transactions)
    budget = 0

    transactions.each do |transaction|
      if transaction.is_expense?
        budget -= transaction.amount
      else
        budget += transaction.amount
      end
    end
    budget
  end
end
