class ListingsController < ApplicationController

  # shows all listings
  def index
    @listings = Listing.all
  end

  def current_user_listings
    @listings = Listing.where(seller_id: current_user.id)
  end

  # shows a listing
  def show

    @request = Request.new

    @listing = Listing.find(params[:id])

    @album = Album.find_by_id(@listing.album_id)

    @seller = User.find_by_id(@listing.seller_id)

  end

  def new
    @listing = Listing.new
  end

  # edit a listing
  def edit
    @listing = Listing.find(params[:id])
  end

  # create a new listing
  def create

    @listing = Listing.new(listing_params)

    @listing.save
    redirect_to listings_path # redirect to home page
  end

  # update a listing
  def update
    @listing = Listing.find(params[:id])

    @listing.update(listing_params)
    redirect_to @listing
  end

  # destroy a listing
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end

  def listing_params
    params.require(:listing).permit(:seller_id, :album_id, :price)
  end

end
