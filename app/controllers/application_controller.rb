class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #get "/shops" do
  #  { Shop.all }.to_json
  #end

  get '/shops' do
    shops = Shop.all.order(:name)
    #.limit(10)
    shops.to_json
  end

  get '/shops/:id' do
    shop = Shop.find(params[:id])

    shop.to_json(only: [:id, :name, :location], include: {
      drinks: { only: [:name, :price]}  
    })
  end

end
