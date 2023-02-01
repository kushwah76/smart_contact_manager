class Contact < ApplicationRecord
    has_one_attached :profile_image
    belongs_to :user1 ,optional: true

    validates :name ,presence:true
    validates :email,presence:true
    validates :mobile_number,presence:true
    validates :mobile_number,numericality:{only_integer:true}
    validates :mobile_number,length:{is:10}
end
