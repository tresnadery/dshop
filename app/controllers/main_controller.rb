class MainController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @produks = Produk.search(params[:search])
    @produks = @produks.paginate(:page => params[:page], :per_page => 5)
  end

  end
