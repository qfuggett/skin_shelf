class Product < ApplicationRecord
    has_many :routines
    has_many :users, :through => :products

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :active_ingredient_1, presence: true
end
