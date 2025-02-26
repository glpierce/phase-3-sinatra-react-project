class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  post "/login" do
    loginUser = User.find_by(username: params[:username], password: params[:password])
    if !!loginUser
      return loginUser.attributes.to_json
    else
      return {error: "Invalid credentials"}.to_json
    end
  end  

  get "/best_sellers" do
    all_array = Book.all.map do |book|
      book_hash = book.attributes
      book_hash[:percent_in_stock] = book[:quantity_in_stock].to_f / book[:total_quantity]
      book_hash
    end
    all = all_array.sort_by{ |hsh| hsh[:percent_in_stock] }.take(5)

    nonfic_array = Book.all.where("category = 'Nonfiction'").map do |book|
      book_hash = book.attributes
      book_hash[:percent_in_stock] = book[:quantity_in_stock].to_f / book[:total_quantity]
      book_hash
    end
    nonfic = nonfic_array.sort_by{ |hsh| hsh[:percent_in_stock] }.take(5)

    fic_array = Book.all.where("category = 'Fiction'").map do |book|
      book_hash = book.attributes
      book_hash[:percent_in_stock] = book[:quantity_in_stock].to_f / book[:total_quantity]
      book_hash
    end
    fic = fic_array.sort_by{ |hsh| hsh[:percent_in_stock] }.take(5)

    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  get "/highest_rated" do
    all = Book.all.order(rating: :desc).limit(5)
    nonfic = Book.all.where("category = 'Nonfiction'").order(rating: :desc).limit(5)
    fic = Book.all.where("category = 'Fiction'").order(rating: :desc).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  get "/new_releases" do
    all = Book.all.order(date_added: :desc).limit(5)
    nonfic = Book.all.where("category = 'Nonfiction'").order(date_added: :desc).limit(5)
    fic = Book.all.where("category = 'Fiction'").order(date_added: :desc).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  get "/deals" do
    all = Book.all.where("discount > 0").order(discount: :desc).limit(5)
    nonfic = Book.all.where("discount > ? AND category = ?", 0, "Nonfiction").order(discount: :desc).limit(5)
    fic = Book.all.where("discount > ? AND category = ?", 0, "Fiction").order(discount: :desc).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  post "/search" do
    results = Book.all.where("#{params[:searchBy]} LIKE ?", "%#{params[:query]}%")
    if !results.empty?
      results_payload = results.map do |book|
        results_hash = book.attributes
        results_hash
      end
      return results_payload.to_json
    else
      return ["No search results"].to_json
    end
  end

  post "/place_order" do 
    new_rentals = params[:newRentals]
    user_data = params[:userData]
    created_rentals = new_rentals.map do |rental|
      RentedBook.create(:book_id => rental[:id], :user_id => user_data[:id], :checkout_date => DateTime.now, :return_date => DateTime.now.next_day(30), :past_due => false)
    end
    new_rentals.each do |rental|
      in_stock = Book.find(rental[:id]).quantity_in_stock
      Book.update(rental[:id], :quantity_in_stock => (in_stock - 1))
    end
    return created_rentals.to_json
  end

end


# t.datetime "checkout_date"
#     t.datetime "return_date"
#     t.boolean "past_due"
#     t.integer "book_id"
#     t.integer "user_id"