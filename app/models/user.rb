class User < ApplicationRecord
  has_many :articles
  validates :name,:password, presence: true, length: { minimum: 4, maximum:100 }
  validates :email,:usert, presence: true


  
    has_secure_password
end
