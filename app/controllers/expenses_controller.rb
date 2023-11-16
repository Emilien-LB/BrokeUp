class ExpensesController < ApplicationController
  # before_action :expense_params, only: [:create, :edit, :update, :destroy]
  before_action :set_expense, only: [:edit, :update, :destroy, :show]

  def index
    @user = current_user
    @expenses = @user.expenses
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @user = current_user
    @expense = @user.expenses.build(expense_params)

    if @expense.save
      redirect_to expenses_path, notice: "Expense was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @expense.update(expense_params)
    if @expense.update(expense_params)
      redirect_to expenses_path, notice: "Expense was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @expense.destroy
    redirect_to expenses_path, notice: "Expense was successfully destroyed.", status: :see_other
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :expense, :payment, :price, :date)
  end

  def set_expense
    @expense = Expense.find(params[:id])
  end

end
