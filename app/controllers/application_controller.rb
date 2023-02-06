class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to the Coffeeshop App" }.to_json
  end

  get '/shops' do
    shops = Shop.all.order(:name)
    #.limit(10)
    #shops.to_json
    shops.to_json(only: [:id, :name, :location, :description], include: {
      drinks: { only: [:id, :name, :decaf, :price, :ingredients, :description, :shop_id]}  
    })
  end

#  get '/shops/:id' do
#    shop = Shop.find(params[:id])

#    shop.to_json(only: [:id, :name, :location], include: {
#      drinks: { only: [:id, :name, :decaf, :price, :ingredients, #:description, :shop_id]}  
#    })
#  end

  get '/shops/:shop_id/drinks' do
    shop = Shop.find(params[:id])
    shop.to_json(only: [:id, :name], include: {
      drinks: { only: [:id, :name, :decaf, :price, :ingredients, :description, :shop_id]}  
    })
  end

  get '/drinks' do
    drinks = Drink.all.order(:shop_id)
    drinks.to_json
  end

  post '/shops/:shop_id/drinks' do
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
      description: params[:description]
    )
    shop.to_json
  end

  patch '/shops/shop_id/edit' do
    shop = Shop.find(params[:id])
    shop.update(
      location: params[:location],
      description: params[:description]
    )
    shop.to_json
  end

  #????
  delete '/shops/:shop_id/drinks/:id' do
    drink = Drink.find(params[:id])
    drink.destroy
    drink.to_json
  end

end
