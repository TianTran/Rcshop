require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Valid" do
  	it { expect(Product.new(name: "Ruby On Rails", product_code: "U1")).to be_valid }
  end
  describe "Invalid" do
  	it { expect(Product.new(name: "", product_code: "U1")).not_to be_valid }
  	it { expect(Product.new(name: "1ruby on rails", product_code: "U1")).not_to be_valid }
  	it { expect(Product.new(name: "Ruby", product_code: "U1")).not_to be_valid }
  	it { expect(Product.new(name: "Ruby"*50, product_code: "U1")).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", price: "rails" )).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", quantity: "rails" )).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", category_id: "rails" )).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", price_sell: "rails" )).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", quantity: "2.3" )).not_to be_valid }
  	it { expect(Product.new(name: "rails validate", product_code: "U1", category_id: "2.3" )).not_to be_valid }
  	it do
	  	U101 = Product.create!(name: "ruby on rails", product_code: "U1")
	  	U102 = Product.new(name: "ruby onrails", product_code: "U1")
		  expect(U102).not_to be_valid
  	end
  	it { expect(Product.new(product_code: "")).not_to be_valid}
  end
end
