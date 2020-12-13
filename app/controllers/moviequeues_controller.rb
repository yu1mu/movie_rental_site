class MoviequeuesController < ApplicationController
  def index
    @moviequeues = Moviequeue.where(user_id: current_user.id)
  end
end
