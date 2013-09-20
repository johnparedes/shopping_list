  class ItemsController < ApplicationController

before_action :find_item, only: %w(edit update show)

  def show
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params
    if @item.save
      flash[:notice] = "Added new item!"
      redirect_to  root_url
    else
      flash[:notice] = @item.errors.full_messages
      render "new"
    end
  end

  def edit
  end

  def update
    if @item.update item_params
      flash[:notice] = "Item updated."
      redirect_to root_url
    else
      render "edit"
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:notice] = "Item removed."
    redirect_to root_url
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :quantity)
  end

end
