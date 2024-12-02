class MovieEventsController < ApplicationController
  def update
    @movie_event = MovieEvent.find(params[:id])
    p "======"
    p @movie_event
    p "======"
  end
end
