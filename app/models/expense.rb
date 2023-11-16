class Expense < ApplicationRecord
  has_many :users

  validates :name, :price, presence: true
  validates :price, numericality: true
  
end
