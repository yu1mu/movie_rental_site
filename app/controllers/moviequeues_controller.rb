class MoviequeuesController < ApplicationController
  def index
    @moviequeues = Moviequeue.all
  end
end
