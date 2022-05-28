class MoviesController < ApplicationController
  def index
    response = HTTP.get("https://imdb-api.com/en/API/SearchMovie/#{Rails.application.credentials[:api_key]}/#{params[:movie_name]}")
    render json: response.parse(:json)
  end
end
