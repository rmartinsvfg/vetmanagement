class Person < ApplicationRecord
    validates :name, :doc, :age, presence: true
    validates :name, length: {minimum: 3}
    validates :age, numericality: { greater_than_or_equal_to: 18 }
    has_many :pet
    accepts_nested_attributes_for :pet
end
