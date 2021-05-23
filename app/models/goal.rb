class Goal < ApplicationRecord
  validates :name, :amount, presence: true
  belongs_to :user
  belongs_to :group, optional: true
end
