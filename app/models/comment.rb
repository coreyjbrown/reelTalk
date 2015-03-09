class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :search, :foreign_key => 'imdb_id', :primary_key => 'imdb_id'
end
