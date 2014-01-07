class Player < ActiveRecord::Base
  has_many :games
  has_many :opponents, through: :games

  
  has_many :inverse_games, class_name: "Game", foreign_key: "opponent_id"
  has_many :inverse_opponents, through: :inverse_games, source: :player
end
