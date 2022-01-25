class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/books" do
    Book.all.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/rented_books" do 
    RentedBook.all.to_json
  end

  get "/login/:username/:password" do
     User.find_by(username: params[:username], password: params[:password]).to_json
  end  

  get "/best_sellers" do
    Book.all.order(rating: :desc).limit(10).to_json
  end

  get "/best_sellers/:genre" do 
    Book.find_by(genre: params[:genre]).order(rating: :desc).limit(10).to_json
  end

end
