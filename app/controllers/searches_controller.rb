class SearchesController < ApplicationController
  def index
	Search.destroy_all
  	if params[:q]
	  # @results = []
	  search_results = OMDB.search(params[:q])
	  search_results.each do |result|
	  	# @results << OMDB.title(result.title)
	  	m = OMDB.title(result.title)
	  	@search = Search.create(
	  		title: m.title, 
	  		year: m.year, 
	  		imdb_id: m.imdb_id,
	  		rated: m.rated, 
	  		genre: m.genre, 
	  		director: m.director, 
	  		actors: m.actors, 
	  		plot: m.plot, 
	  		poster: m.poster
	  		)
	  end
	end
	@searches = Search.all
  end

  def show
  	@search = Search.find(params[:id])
  	@search.imdb_id = @search.imdb_id.gsub("tt","")
  	# get trailer info
	call = "/?imdb=" + @search.imdb_id + "&count=1&width=680&credit=no"
	@url = HTTParty.get("http://api.traileraddict.com#{call}", 
		:headers =>{ 'ContentType' => 'application/json' } )
	# @response = JSON.parse(url)
  end
end
