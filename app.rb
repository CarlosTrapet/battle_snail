require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    # $player_1 = Player.new(params[:player_1_name])
    # $player_2 = Player.new(params[:player_2_name])
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    $game.attack($game.player_2)
    erb(:attackconfirm)
  end

  run! if app_file == $0
end
