class Tag < ApplicationRecord
    belongs_to :gifter, class_name: "User"
end
