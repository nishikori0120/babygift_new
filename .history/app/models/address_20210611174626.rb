class Address < ApplicationRecord
  belongs_to :user,  optional: true
  belongs_to :order, optional: true

  with_options presence: true do
    validates :postcode
    validates :city
    validates :street
    validates :prefecture
  end

  # with_options presence: true , format: { with: /\A[ァ-ヶー－]+\z/, message: 'に全角カタカナを使用してください' } do
  #   validates :first_name_kana
  #   validates :last_name_kana
  # end

  # with_options presence: true do
  #   validates :first_name
  #   validates :last_name
  # end

  # validates :tel, format: {with: /\A\d{10,11}\z/}

  include JpPrefecture
  jp_prefecture :prefecture, method_name: :pref

  def prefecture_name
    JpPrefecture::Prefecture.find(name: prefecture).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
