class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true
    validates :username, uniqueness: true, presence: true

    has_many :communications
    has_many :locations
    has_many :tags, foreign_key: "gifter_id"
    has_many :user_templates
    has_many :gifts, foreign_key: "gifter_id"

    has_many :giftings, class_name: "Exchange", foreign_key: "gifter_id"
    has_many :recipients, through: :giftings

    has_many :receivings, class_name: "Exchange", foreign_key: "recipient_id"
    has_many :gifters, through: :giftings

end
