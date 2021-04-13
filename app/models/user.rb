class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'は文字と数字の両方を含めてください'

  with_options presence: true do
    validates :nickname
    validates :birthday
  end

  with_options numericality: { other_than: 1, message: "を選択してください"} do
    validates :sex_id
    validates :position_id
    validates :household_id
  end

  has_many :foods
  has_many :posts
  has_many :recipes

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex
  belongs_to :position
  belongs_to :household
end
