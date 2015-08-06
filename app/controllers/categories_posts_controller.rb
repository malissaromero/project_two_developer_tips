class CategoriesPostsController < ApplicationController
  belongs_to :category
  belongs_to :post
end
