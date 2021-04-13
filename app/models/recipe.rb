class Recipe < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :name
    validates :food_text
    validates :recipe_text
    validates :user
  end

  has_one_attached :image
  belongs_to :user
end
