class ConvertImdbIdToString < ActiveRecord::Migration
  def change
  	change_column :comments, :imdb_id, :string
  end
end
