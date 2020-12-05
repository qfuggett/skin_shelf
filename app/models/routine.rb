class Routine < ApplicationRecord
    belongs_to :user
    belongs_to :product

    validates :name, presence: true
    validates :name, uniqueness: true

end
