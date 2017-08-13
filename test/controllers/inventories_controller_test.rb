require 'test_helper'

class InventoriesControllerTest < ActionDispatch::IntegrationTest
	# These tests don't work! But this is the sort of thing I'd start building and implementing.
	test "updates count" do
		@product = Product.create!(product_params)
		@product.inventories.first = Inventory.create!(inventory_params)

		assert_equal(63, @product.inventories.first.count)

		post :update, params: { id: @product.id, count: 54 }
		assert_response :success
		assert_equal(54, @product.inventories.first.count)
	end

protected

  def product_params
    {
      product_id: @product.id,
      product_image: "https://bonobos-prod-s3.imgix.net/products/13039/original/DENIM_TravelJean_MidnightBlue_hero1.jpg",
      product_name: MyGoat
  	  product_description: "These pants are super comfy and fit great."
    }
  end

  def inventory_params
  	{
  		product_id: @product.id
		  waist: 36
		  length: 42
		  style: "Stretchy for tall folks."
		  count: 63
  	}
end
