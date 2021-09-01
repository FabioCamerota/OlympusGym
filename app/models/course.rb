class Course < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :reservations, dependent: :destroy
end
