class AddForeignKeysToSearches < ActiveRecord::Migration
  def change
	  add_index :searches, :imdb_id
  end
end
