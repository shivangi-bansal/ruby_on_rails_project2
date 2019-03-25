class Article < ApplicationRecord
    belongs_to :user
    belongs_to :category

    validates :title,:description,:user_id,:category_id, presence: true, length: { minimum: 4, maximum:100 }
end
