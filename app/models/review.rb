class Review < ApplicationRecord
    validates :comments, :presence => true
    belongs_to :course
    belongs_to :user
end