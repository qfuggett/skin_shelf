class Product < ApplicationRecord
    belongs_to :user
    belongs_to :routine

    validates :name, presence: true
    validates :active_ingredient_1, presence: true
end
