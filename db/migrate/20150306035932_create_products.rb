class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_code
      t.string :name
      t.float :price
      t.string :images
      t.text :description
      t.boolean :popular
      t.boolean :new_arrivals
      t.boolean :best_sellers
      t.integer :quantity
      t.boolean :sale
      t.float :price_sell
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
