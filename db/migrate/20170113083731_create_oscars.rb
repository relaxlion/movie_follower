class CreateOscars < ActiveRecord::Migration[5.0]
  def change
    create_table :oscars do |t|
      t.integer :year
      t.references :best_picture, foreign_key: true
      t.references :best_director, foreign_key: true
      t.references :best_actor, foreign_key: true
      t.references :best_actress, foreign_key: true
      t.references :best_supporting_actor, foreign_key: true
      t.references :best_supporting_actress, foreign_key: true
      t.references :best_animated_feature_flim, foreign_key: true
      t.references :best_foreign_language_flim, foreign_key: true
      t.references :best_original_screenplay, foreign_key: true
      t.references :best_adapted_screenplay, foreign_key: true

      t.timestamps
    end
  end
end
