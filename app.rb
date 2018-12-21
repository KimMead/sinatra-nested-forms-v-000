require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      params["pirate"]["ship"].each do |ship_data|
        Ship.new(ship_data["name"], ship_data["type"], ship_data["booty"])
      end

      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])
      @ship = Ship.all 
      erb :'pirate/show'
    end 

    # code other routes/actions here

  end
end
