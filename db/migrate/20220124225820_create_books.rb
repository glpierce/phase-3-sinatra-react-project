class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :genre
      t.float :price
      t.float :rating
      t.string :image
      t.integer :total_quantity
      t.integer :quantity_in_stock
    end
  end
end
