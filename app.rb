require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    p @player_1 = $player_1.name
    p @player_2 = $player_2.name
    $game = Game.new
    erb :play
  end

  get '/attack' do
    p @player_1 = $player_1.name
    p @player_2 = $player_2.name
    $game.attack($player_2)
    @player_2_hp = $player_2.hp
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
