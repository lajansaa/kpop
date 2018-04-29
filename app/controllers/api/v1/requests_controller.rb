module Api::V1
  class RequestsController < ApplicationController

    def index

      if params[:listing_id] == nil
        @requests = Request.all
      else
        @requests = Request.where(listing_id: params[:listing_id].to_i)
      end

      render json: @requests

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
      redirect_to @request
    end

    # approve a request
    def approve_request
      puts "id is"
      puts request_params[:id]

      @request = Request.find(request_params[:id].to_i)

      @request.update(request_params)
      render json: @request
      redirect_to myrequests_path
    end

    # destroy a request
    def destroy
      @request = Request.find(params[:id])
      @request.destroy

      redirect_to myrequests_path
    end

    def current_customer_requests
      @requests = Request.where(customer_id: current_user.id)
      render json: @requests
    end

    def create
      @request = Request.new(request_params)

      @request.save
      render json: @request
      redirect_to myrequests_path
    end

    def request_params
      params.require(:request).permit(:id, :customer_id, :quantity, :approved, :paid, :created_at, :updated_at, :listing_ids => [])
    end

  end
end
