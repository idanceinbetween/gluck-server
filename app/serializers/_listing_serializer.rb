# class ListingSerializer < ActiveModel::Serializer
#   belongs_to :user
#   belongs_to :gift, through: :user
  
#   attributes :id, :title, :expiry, :user, :gift, :exchange1_datetime, :exchange1_location, :exchange2_datetime, :exchange2_location, :created_at, :updated_at

#   class UserSerializer < ActiveModel::Serializer
#     attributes :id, :username, :email, :pref_comm_id
#   end

#   class GiftSerializer < ActiveModel::Serializer
#     attributes :id, :title, :description, :image
#   end
  
# end



