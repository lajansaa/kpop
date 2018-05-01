module Api::V1
  class RequestsController < ApplicationController

    def index

      requests = []

      if params[:listing_id] == nil
        @requests = Request.all

      else
        @requests = Request.where(listing_id: params[:listing_id].to_i)
      end

      @requests.each do |request|

        @customer = User.find(1)

        obj = {
          id: request.id,
          customer_id: request.customer_id,
          customer_name: @customer.name,
          customer_email: @customer.email,
          quantity: request.quantity,
          approved: request.approved,
          paid: request.paid,
          created_at: request.created_at,
          updated_at: request.updated_at,
          listing_id: request.listing_id,
          total_price: request.listing.price.to_i * request.quantity.to_i,
          album_name: request.listing.album.name_eng,
          album_pic: request.listing.album.profile_img
        }
        requests.push(obj)
      end

      render json: {requests: requests}

    end

    def show
      @request = Request.find(params[:id])

      render json: @request

    end

    # edit a request
    def edit
      @request = Request.find(params[:id])

      render json: @request
    end

    # update a request
    def update
      @request = Request.find(params[:id])

      @request.update(request_params)
      render json: @request
      # redirect_to @request
    end

    # approve a request
    def approve_request
      # puts "id is"
      # puts request_params[:id]

      @request = Request.where("listing_id = ? AND customer_id = ? AND id = ?", request_params[:listing_id], request_params[:customer_id], request_params[:id])

      @request.update(request_params)
      render json: @request
      # redirect_to myrequests_path
    end

    # destroy a request
    def destroy
      @request = Request.find(params[:id])
      @request.destroy

      redirect_to myrequests_path
    end

    def current_customer_requests
      @requests = Request.where(customer_id: current_user.id)

      # @requests = Request.all

      requests = []

      @requests.each do |request|
        obj = {
          id: request.id,
          customer_id: request.customer_id,
          quantity: request.quantity,
          approved: request.approved,
          paid: request.paid,
          created_at: request.created_at,
          updated_at: request.updated_at,
          listing_id: request.listing_id,
          total_price: request.listing.price.to_i * request.quantity.to_i,
          album_name: request.listing.album.name_eng,
          album_pic: request.listing.album.profile_img
        }
        requests.push(obj)
      end

      render json: {requests: requests}
    end

    def create
      @request = Request.new(request_params)

      @request.save
      render json: @request
      # redirect_to api_v1_myrequests_path
    end

    def request_params
      params.permit(:id, :customer_id, :quantity, :approved, :paid, :listing_id)
    end

  end
end
