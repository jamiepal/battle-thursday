require 'capybara'
require 'sinatra'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

    get '/' do
      erb(:intro)
    end

    get '/players' do
      erb(:players)
    end

    post '/names' do
      $player_1 = Player.new(params[:player_1]).name
      $player_2 = Player.new(params[:player_2]).name

      redirect '/play'
    end

    get '/play' do
      @player_1 = $player_1
      @player_2 = $player_2
      erb(:play)
    end

    get '/attack' do
      @player_1 = $player_1
      @player_2 = $player_2
      erb(:attack)
    end

    run! if app_file == $0
end
