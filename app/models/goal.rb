class Goal < ApplicationRecord
  validates :name, :amount, presence: true
  belongs_to :user
end
