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

end


# all_array = Book.all.map do |book|
#   book_hash = book.attributes
#   book_hash[:total_quantity]
# end