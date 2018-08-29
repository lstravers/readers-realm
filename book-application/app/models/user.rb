class User < ApplicationRecord
  belongs_to :book

  has_many :users
  validates :name, presence: true,
                    length: { minimum: 3 }
end
