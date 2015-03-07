class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :poster
      t.string :title
      t.integer :year
      t.string :released
      t.text :plot
      t.text :awards
      t.text :actors
      t.string :imdbID

      t.timestamps null: false
    end
  end
end
