class User < ApplicationRecord
  has_many :books

  has_secure_password
  validates :email, presence: true, uniqueness: true
end

  # validates :name, presence: true,
  #                   length: { minimum: 3 }
end
