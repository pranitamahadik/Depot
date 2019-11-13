class StoreController < ApplicationController
  def index
  	logger.debug "inside the index method"
  	@products = Product.all
  	logger.debug "@products-----------#{@products}"
  end

  def add_to_cart
  	
  end

  def display_cart
  	
  end
end
