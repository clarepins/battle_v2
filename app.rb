require 'sinatra/base'
require './lib/player'

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
    erb :play
  end

  get '/attack' do
    p @player_1 = $player_1.name
    p @player_2 = $player_2.name
    @hit_points = $player_2.attack
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
