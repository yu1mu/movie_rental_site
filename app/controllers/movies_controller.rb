class MoviesController < ApplicationController
  before_action :authenticate_user!, except: %i(index)

  def index
    @movies = Movie.all
  end

  def show 
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    if (order = current_user.orders.find_by(movie_id: params[:id])).present?
      order.destroy
    else 
      current_user.orders.create(movie_id: params[:id])
    end 
    
    redirect_back(fallback_location: root_path)
  end

  def toggle_like
    if (queue = current_user.moviequeues.find_by(movie_id: params[:id])).present?
      queue.destroy
    else 
      current_user.moviequeues.create(movie_id: params[:id])
    end

    redirect_back(fallback_location: root_path)
  end

  def search
    @result = Movie.ransack(movie_name_or_movie_description_or_movie_type_cont: params[:q]).result
  end
end
