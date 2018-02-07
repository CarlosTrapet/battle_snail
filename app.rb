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
    $game = Game.new
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attackp2' do
    $game.attack($player_2)
    erb(:attackconfirm)
  end

  run! if app_file == $0
end
