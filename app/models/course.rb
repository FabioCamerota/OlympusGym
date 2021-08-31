class Course < ApplicationRecord
    has_many :reviews, dependent: :destroy
end
