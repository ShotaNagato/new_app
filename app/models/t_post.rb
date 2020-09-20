class TPost < ApplicationRecord
  belongs_to :t_user
  validates :t_user_id, presence: true
  validates :recruit, presence: true
end
