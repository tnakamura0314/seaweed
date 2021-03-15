class Food < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :number, format: {with:  /\A[0-9]+\z/, message: "half-width characters"}
    validates :deadline
    validates :user
  end

  validates :quantity_id,numericality: { other_than: 1, message: "Select"}

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :quantity

end
