class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :tax
      t.float :shipping
      t.float :total
      t.references :order_status, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :order_statuses
  end
end
