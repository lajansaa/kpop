module Api::V1
  class ChargesController < ApplicationController
    def new
    end

    def create

      # update request
      @request = Request.find(params[:id])

      @request.update(paid: true)

      # amount in cents?
      @amount = 1000

      customer = Stripe::Customer.create(
        :email => 'alethea@toh.sg',
        :card => params[:token]
      )

      charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => @amount,
        :description => 'Our customer',
        :currency => 'usd'
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect to charges_path
    end

  end
end
