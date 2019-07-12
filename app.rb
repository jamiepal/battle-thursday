require 'capybara'
require 'sinatra'
require '/Users/student/Projects/admin/battle-project/lib/player.rb'
require '/Users/student/Projects/admin/battle-project/lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

    get '/' do
      erb(:intro)
    end

    get '/players' do
      erb(:players)
    end

    post '/names' do
      $game = Game.new(params[:player_1], params[:player_2])

      redirect '/play'
    end

    get '/play' do
      @player_1 = $game.player_1.name
      @player_2 = $game.player_2.name
      erb(:play)
    end

    get '/attack' do
      @player_1 = $game.player_1.name
      @player_2 = $game.player_2.name
      erb(:attack)
    end

    run! if app_file == $0
end
