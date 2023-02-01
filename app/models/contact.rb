class Contact < ApplicationRecord
    has_one_attached :profile_image
    belongs_to :user1 ,optional: true
end
