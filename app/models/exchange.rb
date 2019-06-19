class Exchange < ApplicationRecord
    belongs_to :gifter, class_name: "User"
    belongs_to :recipient, class_name: "User"
    belongs_to :gift
end
