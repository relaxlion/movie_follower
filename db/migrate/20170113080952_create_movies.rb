class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :chinese_name
      t.string :english_name
      t.string :type
      t.datetime :played_at
      t.float :IMDB
      t.string :rating
      t.integer :length
      t.references :origin, foreign_key: true
      t.references :distributor, foreign_key: true
      t.references :productor, foreign_key: true
      t.integer :box_office

      t.timestamps
    end
  end
end
