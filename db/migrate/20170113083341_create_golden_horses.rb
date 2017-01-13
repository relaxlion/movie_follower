class CreateGoldenHorses < ActiveRecord::Migration[5.0]
  def change
    create_table :golden_horses do |t|
      t.integer :year
      t.references :best_newcomer, foreign_key: true
      t.references :best_supporting_actor, foreign_key: true
      t.references :best_supporting_actress, foreign_key: true
      t.references :best_actor, foreign_key: true
      t.references :best_actress, foreign_key: true
      t.references :best_screenplay, foreign_key: true
      t.references :best_director, foreign_key: true

      t.timestamps
    end
  end
end
