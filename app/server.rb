require 'sinatra'
require 'sinatra/partial'

require './lib/board'
require './lib/point'
require './lib/checker'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '.', 'public') }

get '/' do

  erb :index
end

get '/game' do

  @board = Board.new

  erb :game
end
