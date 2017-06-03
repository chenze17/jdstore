class CartsController < ApplicationController
  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end
    def checkout
      @order = Order.new
    end
    private

    def order_params
      params.require(:order).permit(:billing_name, :billing_address, :shipping_name, :shipping_address)
    end
end
