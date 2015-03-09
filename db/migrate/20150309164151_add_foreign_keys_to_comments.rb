class AddForeignKeysToComments < ActiveRecord::Migration
  def change
  end

  add_index :comments, :user_id
  add_index :comments, :imdb_id
end
