class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.references :movie, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end