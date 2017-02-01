class GamesController < ApplicationController
def landing
  render("landing.html.erb")
end

def play_rock

  computer= ["Rock", "Paper", "Scissors"].sample
  if computer == "Rock"
     @result = "You tied!"
     @handshape = "fa-hand-rock-o"
  elsif computer == "Paper"
     @result = "You lose!"
     @handshape = "fa-hand-paper-o"
  else
     @result = "You win!"
     @handshape = "fa-hand-scissors-o"
  end
  @computer_move = computer
  render("games/play_rock.html.erb")
end

def play_paper

  computer= ["Rock", "Paper", "Scissors"].sample
  if computer == "Rock"
     @result = "You win!"
     @handshape = "fa-hand-rock-o"
  elsif computer == "Paper"
     @result = "You tied!"
     @handshape = "fa-hand-paper-o"
  else
     @result = "You lose!"
     @handshape = "fa-hand-scissors-o"
  end
  @computer_move = computer
  render("games/play_paper.html.erb")
end

def play_scissors

  computer= ["Rock", "Paper", "Scissors"].sample
  if computer == "Rock"
     @result = "You lose!"
     @handshape = "fa-hand-rock-o"
  elsif computer == "Paper"
     @result = "You win!"
     @handshape = "fa-hand-paper-o"
  else
     @result = "You tied!"
     @handshape = "fa-hand-scissors-o"
  end
  @computer_move = computer
  render("games/play_scissors.html.erb")
end

end
