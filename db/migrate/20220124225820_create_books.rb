class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :category
      t.string :description
      t.float :price
      t.float :rating
      t.string :image
      t.integer :total_quantity
      t.integer :quantity_in_stock
      t.datetime :date_added
    end
  end
end
