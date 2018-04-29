module Api::V1
  class ListingsController < ApplicationController

    # shows all listings
    def index

      if params[:album_id] == nil
        @listings = Listing.all

        listings = []

        @listings.each do |listing|
          obj = {
            id: listing.id,
            price: listing.price,
            created_at: listing.created_at,
            updated_at: listing.updated_at,
            album_id: listing.album_id,
            album_pic: listing.album.profile_img,
            album_name_eng: listing.album.name_eng,
            album_name_kor: listing.album.name_kor,
            seller_id: listing.seller_id,
            seller_name: listing.seller.name
          }
          listings.push(obj)
        end

        render json: {listings: listings}
      else
        @listings = Listing.where(album_id: params[:album_id].to_i)
        @album = Album.find(params[:album_id].to_i)

        listings = []

        @listings.each do |listing|
          obj = {
            id: listing.id,
            price: listing.price,
            created_at: listing.created_at,
            updated_at: listing.updated_at,
            album_id: listing.album_id,
            seller_id: listing.seller_id,
            seller_name: listing.seller.name
          }
          listings.push(obj)
        end

        render json: {album: @album,
                      listings: listings
                      }
      end

    end

    def current_user_listings
      # @listings = Listing.where(seller_id: current_user.id)

      @listings = Listing.all

      listings = []

      @listings.each do |listing|
        obj = {
          id: listing.id,
          price: listing.price,
          created_at: listing.created_at,
          updated_at: listing.updated_at,
          album_id: listing.album_id,
          album_pic: listing.album.profile_img,
          album_name_eng: listing.album.name_eng,
          album_name_kor: listing.album.name_kor,
          seller_id: listing.seller_id,
          seller_name: listing.seller.name
        }
        listings.push(obj)
      end

      render json: {listings: listings}

    end

    # shows a listing
    def show

      @request = Request.new

      @listing = Listing.find(params[:id])

      # @album = Album.find_by_id(@listing.album_id)
      # @seller = User.find_by_id(@listing.seller_id)

      # puts @listing.requests

      render json: {request: @request,
                    listing: @listing,
                    album: @listing.album,
                    seller: @listing.seller
                   }

    end

    def new
      @listing = Listing.new

      render json: @listing
    end

    # edit a listing
    def edit
      @listing = Listing.find(params[:id])

      render json: @listing
    end

    # create a new listing
    def create

      @listing = Listing.new(listing_params)

      @listing.save

      render json: @listing
      redirect_to listings_path # redirect to home page
    end

    # update a listing
    def update
      @listing = Listing.find(params[:id])

      @listing.update(listing_params)

      render json: @listing

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

end
