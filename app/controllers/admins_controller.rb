class AdminsController < ApplicationController

  def index
    @award = Award.find(1)
    @to_be_checked = ArtisteV2.all.order('created_at DESC, updated_at, mcountdown')
  end

  def create
    @artiste_id = params[:artiste_id]
    @new_name_eng = params[:artiste][:name_eng]
    @new_name_kor = params[:artiste][:name_kor]
    if @new_name_eng
      ArtisteV2.find(@artiste_id).update(:name_eng => @new_name_eng)
      flash[:notice] = "Artiste English Name was successfuly updated!"
    else
      ArtisteV2.find(@artiste_id).update(:name_kor => @new_name_kor)
      flash[:notice] = "Artiste Korean Name was successfuly updated!"
    end
    redirect_to admins_path
  end

end
