class ExpensesController < ApplicationController

  def index
    @user = current_user
    @expenses = Expense.all
  end

  def create

  end
end
