class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :name, :password, presence: true
    has_many :pets, dependent: :destroy


end