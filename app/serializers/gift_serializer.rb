class GiftSerializer < ActiveModel::Serializer
  belongs_to :gifter_id
  belongs_to :listing_stat_id
  
  attributes :id, :title, :description, :image, :gifter_id, :expiry, :listing_stat_id, :exchange1_datetime, :exchange1_location, :exchange2_datetime, :exchange2_location, :created_at, :updated_at
end
