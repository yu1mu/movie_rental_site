class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def create 
    Order.create(user_id: current_user.id, movie_id: params[:id] )

    redirect_to movie_path(params[:id])
  end
  
  

end
