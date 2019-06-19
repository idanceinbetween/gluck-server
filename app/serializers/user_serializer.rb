class UserSerializer < ActiveModel::Serializer
  has_many :communications
  has_many :locations
  has_many :tags, foreign_key: "gifter_id"
  has_many :user_templates
  has_many :gifts, foreign_key: "gifter_id"
  has_many :giftings
  has_many :receivings

  attributes :id, :username, :email, :pref_comm_id, :communications, :locations, :tags, :user_templates, :gifts, :giftings, :receivings, :created_at, :updated_at
  
  class CommunicationSerializer < ActiveModel::Serializer
    attributes :id, :label, :content
  end

  class LocationSerializer < ActiveModel::Serializer
    attributes :id, :label, :address, :city, :postcode
  end

  class TagSerializer < ActiveModel::Serializer
    attributes :id, :title, :color
  end

  class UserTemplateSerializer < ActiveModel::Serializer
    attributes :id, :label, :content, :location_id
  end

  class GiftSerializer < ActiveModel::Serializer
    attributes :id, :title, :description, :image,  :gifter_id, :expiry, :listing_stat_id, :exchange1_datetime, :exchange1_location, :exchange2_datetime, :exchange2_location, :created_at, :updated_at
  end

  class ExchangeSerializer < ActiveModel::Serializer
    attributes :id, :gift_id, :gifter_id, :recipient_id, :exchange_stat_id, :date, :tag_id

  end

end
