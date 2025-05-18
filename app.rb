require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do 
  moves = ["rock", "paper", "scissors"] 

  @comp_move = moves.sample

  if @comp_move == "rock"
    @result = "tied"
  elsif @comp_move == "scissors"
   @result = "won"
  elsif @comp_move = "paper"
    @result = "lost"
  end

  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"] 

  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @result = "won"
  elsif @comp_move == "scissors"
    @result = "lost"
  elsif @comp_move = "paper"
    @result = "tied"
  end
 
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"] 

  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @result = "lost"
  elsif @comp_move == "scissors"
    @result = "tied"
  elsif @comp_move = "paper"
    @result = "won"
  end
 
  erb(:scissors)
end

