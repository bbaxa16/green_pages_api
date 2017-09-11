class Strain < ApplicationRecord
  has_many :ledgers
  has_many :users, through: :ledgers
end
