class MainController < ApplicationController
  def index
    @produks = Produk.all.paginate(:page => params[:page],:per_page=>5)
  end
end
