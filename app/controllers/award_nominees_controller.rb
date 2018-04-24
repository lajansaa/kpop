class AwardNomineesController < ApplicationController
   helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def show
    @award = Award.find(params[:award_id])
    @nominee = Nominee.find(params[:id])
    @provider_links = @nominee.song.digital_service_providers_links
  end

  def sign_in_modal
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add_to_cart_modal
    respond_to do |format|
      format.html
      format.js
    end
  end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
