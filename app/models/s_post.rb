class SPost < ApplicationRecord
  belongs_to :s_user
  validates :s_user_id, presence: true
  validates :recruit, presence: true
end
