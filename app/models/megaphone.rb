class Megaphone < ApplicationRecord
  belongs_to :user

  validates :body, presence: true, length: { in: 1..144 }
  validates :user, presence: true

  default_scope { order(created_at: :desc) }

  delegate :username, to: :user # Samething as the commented method.
  # def username
  #   user.username
  # end
end
