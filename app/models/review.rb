class Review < ApplicationRecord
    belongs_to :serial
    belongs_to :user
end
