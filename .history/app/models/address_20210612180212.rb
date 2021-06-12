class Address < ApplicationRecord
  belongs_to :user,  optional: true
  belongs_to :order, optional: true

  with_options presence: true do
    validates :city
    validates :street
    validates :prefecture
  end

  validates :postcode, presence: true, format: { with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}$|^\d{5}$|^\d{7}\z/ }


  include JpPrefecture
  jp_prefecture :prefecture, method_name: :pref

  def prefecture_name
    JpPrefecture::Prefecture.find(name: prefecture).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

end
