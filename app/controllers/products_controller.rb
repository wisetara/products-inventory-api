class ProductsController < ApplicationController
  def index
  	@products = Product.all
	end

  private

  def product_params
  	params.require(:product).permit({ inventory_params: inventory_params },
  																	:product_id, :product_description,
  																	:product_image, :product_name).to_h
  end

  def inventory_params
  	params.permit(:count, :length, :product_id, :style, :waist).to_h
  end
end
