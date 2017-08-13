class InventoriesController < ApplicationController
	def index
  	@inventories = Inventory.all
  end

	private

	def inventory_params
  	params.permit(:count, :length, :product_id, :style, :waist).to_h
  end
end
