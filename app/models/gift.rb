class Gift < ApplicationRecord
    belongs_to :gifter, class_name: "User"
    has_many :giftings
    has_many :recipients, through: :giftings
end
