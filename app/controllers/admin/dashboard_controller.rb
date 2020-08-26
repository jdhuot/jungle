class Admin::DashboardController < Admin::BaseController
  
  # Render show to admins with access to product and categories counts
  def show
    @product_count = Product.count
    @category_count = Category.count
  end

end
