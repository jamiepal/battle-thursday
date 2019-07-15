require 'capybara'
require 'sinatra'
 require './lib/bookmark.rb'

class Bookmark < Sinatra::Base

  enable :sessions

    get '/' do
      erb(:index)
    end
    get '/bookmarks' do
      bookmark1 = Individualbookmark.new("https://www.facebook.com")
      bookmark2 = Individualbookmark.new("https://www.google.com")

      erb(:bookmarks)
    end

    run! if app_file == $0
end
