class Order < ApplicationRecord

  belongs_to :user
  has_one :address

  with_options presence: true do
    validates :k_name, format: { with: }
    validates :r_name
    validates :birthday
    validates :height
  end

end
