class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :sku
      t.integer :wheelsize
      t.text :description

      t.timestamps null: false
    end
  end
end
