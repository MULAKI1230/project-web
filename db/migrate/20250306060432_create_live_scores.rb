class CreateLiveScores < ActiveRecord::Migration[8.0]
  def change
    create_table :live_scores do |t|
      t.string :team_home
      t.string :team_away
      t.integer :score_home
      t.integer :score_away
      t.datetime :match_time

      t.timestamps
    end
  end
end
