class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title
      t.string :year
      t.string :imdb_id
      t.string :rated
      t.string :genre
      t.string :director
      t.string :actors
      t.string :plot
      t.string :poster

      t.timestamps null: false
    end
  end
end
