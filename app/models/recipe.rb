class Recipe
	include HTTParty
	ENV['FOOD2FORK_KEY'] = "33ea4b999695877a4e4be6e0dc792829"
	key_value = ENV['FOOD2FORK_KEY'] || "33ea4b999695877a4e4be6e0dc792829"
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api/"
    default_params key: key_value
    format :json

    def self.for keyword
    	get("/search", query: {q: keyword})["recipes"]
    end
end