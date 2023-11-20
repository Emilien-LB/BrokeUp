class Budget < ApplicationRecord
  belong_to :user
  has_many :expense

  
end
