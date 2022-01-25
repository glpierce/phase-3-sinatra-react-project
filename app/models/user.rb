class User < ActiveRecord::Base
    has_many :rented_books
    has_many :books, through: :rented_books
end