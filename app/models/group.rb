class Group < ApplicationRecord
  validates :name, :icon, presence: true
end
