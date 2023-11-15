class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.text :name
      t.boolean :expense
      t.boolean :payment
      t.decimal :price
      t.datetime :date

      t.timestamps
    end
  end
end
