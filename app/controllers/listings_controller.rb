class ListingsController < ApplicationController

  # shows all listings
  def index
    @listing = Listing.all
  end

  # shows a listing
  def show
    @listing = Listing.find(params[:id])
  end
  
end
