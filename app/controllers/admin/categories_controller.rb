class Admin::CategoriesController < Admin::BaseController

  # Display all categories to admin
  def index
    @categories = Category.all
  end

  # For new categories
  def new
    @category = Category.new
  end

  # Used for admins to create new categories
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private
  
  # Secure form params
  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
