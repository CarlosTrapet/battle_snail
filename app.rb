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
    # @player_1_name = $player_1.name
    # @player_2_name = $player_2.name
    erb(:play)
  end

  post '/attackp2' do
    $player_2.reduce_hp
    erb(:attackconfirm)
  end

  run! if app_file == $0
end
