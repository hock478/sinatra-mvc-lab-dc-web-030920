require_relative 'config/environment'

class App < Sinatra::Base

    get '/index' do
        erb :user_input
    end

    post '/index' do
        word = params[:word]
        @pig = PigLatinizer.new(word)
        erb :show
    end

end