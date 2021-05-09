class Group < ApplicationRecord
  validates :name, :icon, presence: true
  belongs_to :user
end
