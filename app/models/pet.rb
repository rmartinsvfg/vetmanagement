class Pet < ApplicationRecord
    validates :name, :age, :adress, presence: true
    validates :name, length: {minimum: 3}
    validates :age, numericality: { greater_than_or_equal_to: 1 }
    belongs_to :person
    has_many :recipe
end