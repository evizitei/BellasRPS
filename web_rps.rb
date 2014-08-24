require 'sinatra'

configure do
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib|
    require File.basename(lib, '.*')
  }
end

get '/' do
  erb :choose_shape
end

get '/play_game' do
  player_shape = params[:user_shape]
  computer_shape, outcome = RPS.play(player_shape.to_sym)
  @player_pic = pick_pic(player_shape.to_sym)
  @computer_pic = pick_pic(computer_shape)
  @outcome = outcome
  erb :play_game
end

PICS = {
  R: "rock.jpeg",
  P: "paper.jpeg",
  S: "scissors.jpeg",
}

def pick_pic(shape)
  PICS[shape]
end
