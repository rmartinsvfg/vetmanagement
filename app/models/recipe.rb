class Recipe < ApplicationRecord
    validates :subject, :indications, presence: true
    belongs_to :pet
end
