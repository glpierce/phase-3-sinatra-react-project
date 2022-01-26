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
    all = Book.all.order("quantity_in_stock / total_quantity ASC").limit(5)
    nonfic = Book.find_by(genre: "Non-Fiction").order("quantity_in_stock / total_quantity ASC").limit(5)
    fic = Book.all.where("genre IS NOT 'Non-Fiction'").order("quantity_in_stock / total_quantity ASC").limit(5)
    return {all: all, non_fiction: nonfic, fiction: fic}
  end

  get "/highest_rated" do
    all = Book.all.order(rating: :desc).limit(5)
    nonfic = Book.find_by(genre: "Non-Fiction").order(rating: :desc).limit(5)
    fic = Book.all.where("genre IS NOT 'Non-Fiction'").order(rating: :desc).limit(5)
    return {all: all, non_fiction: nonfic, fiction: fic}
  end

  get "/new_releases" do
    all = Book.all.order(date_added: :desc).limit(5)
    nonfic = Book.find_by(genre: "Non-Fiction").order(date_added: :desc).limit(5)
    fic = Book.all.where("genre IS NOT 'Non-Fiction'").order(date_added: :desc).limit(5)
    return {all: all, non_fiction: nonfic, fiction: fic}
  end

end
