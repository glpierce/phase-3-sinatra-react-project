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
    all = Book.select('*, (quantity_in_stock / total_quantity) as percent_in_stock').order(id: :desc).limit(5)
    nonfic = Book.find_by(category: "Nonfiction").order(Arel.sql('quantity_in_stock / total_quantity ASC')).limit(5)
    fic = Book.find_by(category: "Fiction").order(Arel.sql('quantity_in_stock / total_quantity ASC')).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  get "/highest_rated" do
    all = Book.order(rating: :desc).limit(5)
    nonfic = Book.find_by(category: "Nonfiction").order(rating: :desc).limit(5)
    fic = Book.find_by(category: "Fiction").order(rating: :desc).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

  get "/new_releases" do
    all = Book.all.order(date_added: :desc).limit(5)
    nonfic = Book.find_by(category: "Nonfiction").order(date_added: :desc).limit(5)
    fic = Book.find_by(category: "Fiction").order(date_added: :desc).limit(5)
    return {all: all, nonfiction: nonfic, fiction: fic}.to_json
  end

end
