class StoreController < ApplicationController
  def home
    @title = "Automated Store"
    @product = Product.newest
  end

  def about
    @title = "About the Store"
  end

  def contact
  end
end
