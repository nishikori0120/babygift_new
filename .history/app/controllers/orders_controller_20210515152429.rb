class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @order = Order.new
  end

  def create
  end
end
