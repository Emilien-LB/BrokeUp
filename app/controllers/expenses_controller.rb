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
    @expense = Expense.new(params[:expense])

    if @expense.save
      redirect_to expense_path, notice: "Expense was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
    redirect_to expenses_path
  end

  private

  def expense_params
    params.require(:expense).permit(name:, expense:, payment:, price:, date:)
  end
end
