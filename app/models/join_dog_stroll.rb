class JoinDogStroll < ApplicationRecord
    belongs_to :dog
    belongs_to :stroll
end
#le join du N to N entre Dog et Stroll
