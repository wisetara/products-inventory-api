require 'csv'

product_file = File.read(Rails.root.join('lib', 'seeds', 'products.csv')).tr('"', '')
inventory_file = File.read(Rails.root.join('lib', 'seeds', 'inventory.csv'))

CSV.parse(product_file, headers: true, header_converters: :symbol, col_sep: ",") do |row|
	Product.create!({product_id: row[:product_id],
									 product_name: row[:product_name],
									 product_image: row[:product_image].strip,
									 product_description: row[:product_description]})
end


CSV.parse(inventory_file, headers: true, header_converters: :symbol, col_sep: ",", quote_char: "'") do |row|
	Inventory.create!({ product_id: row[:product_id].to_i,
										  waist: row[:waist].to_i,
										  length: row[:length].to_i,
										  style: row[:style].strip,
										  count: row[:count].to_i })
end
