class HomesController < ApplicationController
	before_action :set_common_variables
	before_action :set_category, only: [:categories]
	before_action :set_product, only: [:products]
	def index
		
  	end
  	def categories

  	end
  	def products

  	end
    def search
      if params[:search]
        @search_product = Product.search(params[:search]).order("created_at DESC")
      else
        @search_product = Product.order("created_at DESC")
      end
    end
  private
	def set_common_variables
      @categories = Category.all
      @products = Product.all
      @popular = Product.popular
      @new_arrivals = Product.new_arrivals
      @best_sellers = Product.best_sellers
      @order_item = current_order.order_items.new
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
      @category_product = Product.where(category_id: @category.id)  
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :introduce, :avatar)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :images, :popular, :new_arrivals, :best_sellers, 
      	:category_id, :product_code, :description, :quantity, :sale, :price_sell)
    end
end
