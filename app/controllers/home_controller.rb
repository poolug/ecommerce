class HomeController < ApplicationController

  def index
    @products = Product.all
    @variants = Variant.all
  end
end
