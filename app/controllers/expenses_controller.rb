class ExpensesController < ApplicationController
  before_action :expense_params, only: [:create, :edit, :update, :destroy]
  def index
    @user = current_user
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to @expense, notice: "Expense was successfully created."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update

  end

  def edit
    
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :expense, :payment, :price, :date)
  end
end
