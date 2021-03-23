class Post < ApplicationRecord
  validates :user, presence: true

  belongs_to :user
end
