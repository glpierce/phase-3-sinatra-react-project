class Book < ActiveRecord::Base
    has_many :rented_books
    has_many :users, through: :rented_books
end