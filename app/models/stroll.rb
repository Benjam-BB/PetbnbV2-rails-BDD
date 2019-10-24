class Stroll < ApplicationRecord
    belongs_to :dogsitter
    has_many :join_dog_strolls
    has_many :dogs, through: :join_dog_stroll
end
