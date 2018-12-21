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





    # POST '/pirates' do
    # end

    # code other routes/actions here

  end
end
