require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        word = params[:words]
        @words = PigLatinizer.new(word)
        erb :show
    end

end