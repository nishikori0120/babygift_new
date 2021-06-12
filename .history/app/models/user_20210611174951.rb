class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one :address
  has_one :card, dependent: :destroy
  has_many :orders

  with_options presence: true , format: { with: /\A[ァ-ヶー－]+\z/, message: 'に全角カタカナを使用してください' } do
    validates :first_name_kana
    validates :last_name_kana
  end

  with_options presence: true do
    validates :first_name
    validates :last_name
  end

  validates :tel, presence: true, format: {with: /\A\d{10,11}\z/, message: 'に全角カタカナを使用してください'}

  # include Katakana
  # before_validation do
  #   self.first_name_kana = change_kana(first_name_kana)
  # end

end
