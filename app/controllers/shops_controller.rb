class ShopsController < ApplicationController
  
  def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized  
    end
  end
  def index
    @products = Product.all

    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
