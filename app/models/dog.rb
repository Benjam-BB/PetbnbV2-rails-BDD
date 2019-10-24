class Dog < ApplicationRecord
    belongs_to :city
    has_many :join_dog_strolls
    has_many :strolls, through: :join_dog_strolls
end
