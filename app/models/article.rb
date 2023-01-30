class Article < ApplicationRecord
    validates :title,presence: true
    validates :bodby,presence: true,length:{minimum:10}
end
