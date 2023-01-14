class ItemsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      items = user.items
    else
      items = Item.all
    end
    render json: items, include: :user 
  end


  def show
    if params[:user_id]
       user = User.find(params[:user_id])
    else 
      item = Item.find(params[:id])
    end
    render json: item
  end

  def create 
    user = User.find(params[:user_id])
    item = user.Item.create(params[:name, :description, :price])
    render json: item
  end 












  # def show 
  #   item = Item.find(params[:item_id])
  #   render json: item 
  # end 



end
