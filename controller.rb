require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_game.rb')
also_reload('./models/*')

get '/rps/:p1/:p2' do
  player1 = params[:p1]
  player2 = params[:p2]
  @result = RPSGame.check_win(player1,player2)
  erb(:game_result)
end
