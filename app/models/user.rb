class User < ApplicationRecord
	validates :name, presence: true, { maximum: 50 }
	validates :email, presence: true, length: { maximum: 255 }
end
