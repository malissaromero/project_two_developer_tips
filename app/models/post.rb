class Post < ActiveRecord::Base
  belongs_to :user
  has_many :categories, through: :categories_posts
end
