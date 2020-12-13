class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end
  def create 
    Order.create(user_id: current_user.id, movie_id: params[:id] )

    redirect_to movie_path(params[:id])
  end
  
  

end
