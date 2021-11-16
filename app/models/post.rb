class Post < ApplicationRecord
	#if post dest, comment also gets destroyed from db
has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body,  presence: true
end
