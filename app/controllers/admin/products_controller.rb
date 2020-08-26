class Admin::ProductsController < Admin::BaseController

  # Render all products in order of descending ID
  def index
    @products = Product.order(id: :desc).all
  end

  # Used in create new product
  def new
    @product = Product.new
  end

  # Allow admin to create new products
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to [:admin, :products], notice: 'Product created!'
    else
      render :new
    end
  end

  # Allow admin to delete products
  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to [:admin, :products], notice: 'Product deleted!'
  end

  private

  # Securely get form data
  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end

end
