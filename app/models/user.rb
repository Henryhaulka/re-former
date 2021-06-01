class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, format:{ with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, on: :create}
    validates :password, presence: true, length: { minimum: 7}
end
