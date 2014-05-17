class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :product, index: true
      t.belongs_to :cart, index: true
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
