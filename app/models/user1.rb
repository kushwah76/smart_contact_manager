class User1 < ApplicationRecord
    has_many :contacts
    

    validates :email, uniqueness: true
end
