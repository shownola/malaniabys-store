class CategoriesController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @categories = Category.joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end

end
