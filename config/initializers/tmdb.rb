require 'dotenv'

Dotenv.load

Tmdb::Api.key(ENV['TMDB_API_KEY'])
