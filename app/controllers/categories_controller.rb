class CategoriesController < ApplicationController

  # Show products assigned to corrosponding category ID
  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

end
