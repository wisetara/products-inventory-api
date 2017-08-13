require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	should have_many :inventories

	let(:product) { Product.new }

	# These tests don't work yet. But the idea is that I'd start building things out, depending
	# on what these objects do/handle/report.

	test "additional attributes can be set" do
		product = create_product
		assert_equal(nil, product.inventories.first)
		product.inventories.first = {}
		assert_equal(true, product.inventories?)
	end

	def create_product(options = {})
		product_class = Product.new
		product_class.create(options.merge(default_options))
	end
end
