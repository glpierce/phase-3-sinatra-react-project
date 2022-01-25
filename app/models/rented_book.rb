class RentedBook < ActiveRecord::Base
    belongs_to :user
    belongs_to :books
end