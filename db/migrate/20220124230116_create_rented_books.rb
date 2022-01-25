class CreateRentedBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :rented_books do |t|
      t.datetime :checkout_date
      t.datetime :return_date
      t.boolean :past_due
      t.integer :book_id
      t.integer :user_id
    end
  end
end
