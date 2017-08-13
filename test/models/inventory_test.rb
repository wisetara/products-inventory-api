require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
	it { should belong_to(:product) }
end