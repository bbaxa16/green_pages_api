class Ledger < ApplicationRecord
  belongs_to :user
  belongs_to :strain

  validates_uniqueness_of :user_id, scope: :strain_id
  validates_uniqueness_of :strain_id, scope: :user_id
end
