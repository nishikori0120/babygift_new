class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def new
    # render '/app/views/cards/new.html.erb'
  end

  def create
  end
end
