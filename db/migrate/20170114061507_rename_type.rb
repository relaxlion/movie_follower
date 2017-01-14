class RenameType < ActiveRecord::Migration[5.0]
  def change
  	rename_column :movies, :type, :movie_type
  end
end
