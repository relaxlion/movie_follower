class CreateGoldenHorses < ActiveRecord::Migration[5.0]
  def change
    create_table :golden_horses do |t|
      t.integer :year
      t.integer :best_newcomer_id
      t.integer :best_supporting_actor_id
      t.integer :best_supporting_actress_id
      t.integer :best_actor_id
      t.integer :best_actress_id
      t.integer :best_screenplay_id
      t.integer :best_director_id

      t.timestamps
    end
  end
end
