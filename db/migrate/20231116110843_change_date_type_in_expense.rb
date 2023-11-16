class ChangeDateTypeInExpense < ActiveRecord::Migration[7.0]
  def change
    change_column :expenses, :date, :date
  end
end
