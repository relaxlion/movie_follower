class CreateOscars < ActiveRecord::Migration[5.0]
  def change
    create_table :oscars do |t|
      t.integer :year
      t.integer :best_picture_id
      t.integer :best_director_id
      t.integer :best_actor_id
      t.integer :best_actress_id
      t.integer :best_supporting_actor_id
      t.integer :best_supporting_actress_id
      t.integer :best_animated_feature_flim_id
      t.integer :best_foreign_language_flim_id
      t.integer :best_original_screenplay_id
      t.integer :best_adapted_screenplay_id

      t.timestamps
    end
  end
end
