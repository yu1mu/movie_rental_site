class ActorsController < ApplicationController
    before_action :authenticate_user!, except: %i(index)
    def search
        @results = Movie.ransack(actors_actor_name_or_movie_name_or_movie_description_or_movie_type_cont: params[:q]).result
        @appeared = AppearedIn.all
    end
end
