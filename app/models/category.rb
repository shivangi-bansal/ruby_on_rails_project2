class Category < ApplicationRecord
    has_many :articles

    validates :name, presence: true, length: { minimum: 4, maximum:100 }
end
