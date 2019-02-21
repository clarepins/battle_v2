require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    @player_2 = Player.new(params[:player_2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @p1 = $game.player1.name
    @p2 = $game.player2.name
    erb :play
  end

  get '/attack' do
    @p1 = $game.player1.name
    @p2 = $game.player2.name
    $game.attack($game.player2)
    @player_2_hp = $game.player2.hp
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
