class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Coffeeshop App" }.to_json
  end

  get '/shops' do
    shops = Shop.all.order(:name)
    shops.to_json(only: [:id, :name, :location, :description], include: {
      drinks: { only: [:id, :name, :decaf, :price, :ingredients, :description, :shop_id]}  
    })
  end

  get '/drinks' do
    drinks = Drink.all.order(:shop_id)
    drinks.to_json
  end

  post '/drinks' do
    drink = Drink.create(
      name: params[:name],
      decaf: params[:decaf],
      price: params[:price],
      ingredients: params[:ingredients],
      description: params[:description],
      shop_id: params[:shop_id]
    )
    drink.to_json
  end

  post '/shops' do
    shop = Shop.create(
      name: params[:name],
      location: params[:location],
      description: params[:description],
    )
    shop.to_json(:include => :drinks) #shorthand
  end

  patch '/shops/:id' do
    shop = Shop.find(params[:id])
    shop.update(
      name: params[:name],
      location: params[:location],
      description: params[:description]
    )
    shop.to_json(:include => :drinks)
  end

  delete '/shops/:id' do
    shop = Shop.find(params[:id])
    shop.destroy
    shop.to_json
  end

  #delete '/shops/:shop_id/drinks/:id' do
  #  drink = Drink.find(params[:id])
  #  drink.destroy
  #  drink.to_json
  #end
  delete '/drinks/:id' do
    drink = Drink.find(params[:id])
    drink.destroy
    drink.to_json
  end

end
