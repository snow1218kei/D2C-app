class Product < ApplicationRecord
   has_many :relationships
   has_many :users, through: :relationships
   validates :user_id, presence: true
end
