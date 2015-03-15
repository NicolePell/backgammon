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
  24.times { @board.add_point(Point.new) }

  @points = @board.points

  @point1 = @points[0].place(Checker.new('red'))
  @point1 = @points[0].place(Checker.new('red'))

  @point12 = @points[11].place(Checker.new('red'))
  @point12 = @points[11].place(Checker.new('red'))
  @point12 = @points[11].place(Checker.new('red'))
  @point12 = @points[11].place(Checker.new('red'))
  @point12 = @points[11].place(Checker.new('red'))

  @point17 = @points[16].place(Checker.new('red'))
  @point17 = @points[16].place(Checker.new('red'))
  @point17 = @points[16].place(Checker.new('red'))

  @point19 = @points[18].place(Checker.new('red'))
  @point19 = @points[18].place(Checker.new('red'))
  @point19 = @points[18].place(Checker.new('red'))
  @point19 = @points[18].place(Checker.new('red'))
  @point19 = @points[18].place(Checker.new('red'))

  @point24 = @points[-1].place(Checker.new('white'))
  @point24 = @points[-1].place(Checker.new('white'))

  @point13 = @points[12].place(Checker.new('white'))
  @point13 = @points[12].place(Checker.new('white'))
  @point13 = @points[12].place(Checker.new('white'))
  @point13 = @points[12].place(Checker.new('white'))
  @point13 = @points[12].place(Checker.new('white'))

  @point8 = @points[7].place(Checker.new('white'))
  @point8 = @points[7].place(Checker.new('white'))
  @point8 = @points[7].place(Checker.new('white'))

  @point6 = @points[5].place(Checker.new('white'))
  @point6 = @points[5].place(Checker.new('white'))
  @point6 = @points[5].place(Checker.new('white'))
  @point6 = @points[5].place(Checker.new('white'))
  @point6 = @points[5].place(Checker.new('white'))

  erb :game
end
