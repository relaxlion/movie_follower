class CreateDistributors < ActiveRecord::Migration[5.0]
  def change
    create_table :distributors do |t|
      t.string :name
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
