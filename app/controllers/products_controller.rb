class ProductsController < ApplicationController
  before_action :find_product , only: [:edit, :update, :show, :destroy]
  def index
    @products = Product.all
  end

  def show; end

  def edit; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      flash[:error] = @product.errors.full_messages.join(", ").to_s
      render 'new'
    end
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Product updated successfully"
      redirect_to @product
    else
      flash[:error] = @product.errors.full_messages.join(", ").to_s
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = "Product deleted successfully"
    redirect_to products_path
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :descriptinon, :category, :price, :image)
  end
end
