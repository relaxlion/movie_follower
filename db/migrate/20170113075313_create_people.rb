class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :chinese_name
      t.string :english_name
      t.references :country, foreign_key: true
      t.string :gender
      t.datetime :birthday

      t.timestamps
    end
  end
end
