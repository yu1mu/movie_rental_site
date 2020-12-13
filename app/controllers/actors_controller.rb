class ActorsController < ApplicationController
    before_action :authenticate_user!, except: %i(index)
    def search
        @results = Movie.ransack(actors_actor_name_cont: params[:q]).result
        @appeared = AppearedIn.all
    end
end
