class AddPlayerScoreToGames < ActiveRecord::Migration
  def change
    add_column :games, :player_score, :integer
    add_column :games, :opponent_score, :integer
  end
end
