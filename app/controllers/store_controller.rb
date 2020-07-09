class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    @search = Product.all.ransack params[:q]
    @products = @search.result.page(params[:page]).per(5)
  end
end
