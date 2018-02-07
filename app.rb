require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attackp2' do
    erb(:attackconfirm)
  end

  run! if app_file == $0
end
