class Category < ActiveRecord::Base
  has_many :posts, through: :categories_posts
end
