class RatingsController < ApplicationController
    def create
      Rating.create rating_params
      redirect_back(fallback_location: root_path)
    end

    private

    def rating_params
        params.require(:rating).permit(:user_id, :movie_id, :rating)
    end
end
