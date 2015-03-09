class Search < ActiveRecord::Base
	has_many :comments, :foreign_key => 'imdb_id', :primary_key => 'imdb_id'
end
