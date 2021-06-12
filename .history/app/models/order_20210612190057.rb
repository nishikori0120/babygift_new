class Order < ApplicationRecord

  belongs_to :user
  has_one :address

  with_options presence: true do
    validates :k_name, format: { with: /\A[一-龥]+\z/ }
    validates :r_name, format: { with: /\A[a-zA-Z]+\z/}
    validates :birthday
    validates :height
  end

end
