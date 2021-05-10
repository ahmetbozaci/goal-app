class User < ApplicationRecord
  validates :name, presence: true
  has_many :groups
  has_many :goals
end
