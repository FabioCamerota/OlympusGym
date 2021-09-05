class Course < ApplicationRecord
    validates :nome, :presence => true
    has_many :reviews, dependent: :destroy
    has_many :reservations, dependent: :destroy
end
