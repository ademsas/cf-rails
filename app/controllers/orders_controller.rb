class OrdersController < ApplicationController
  def index
  end

  def show
  end

  def new
		@orders = Order.new
  end

  def create
  end

  def destroy
  end
end