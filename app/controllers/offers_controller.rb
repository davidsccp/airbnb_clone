class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:index]

  def index
    @offers = current_user.offers.all
  end

  def new
    @offer = current_user.offers.build
  end

  def create
    @offer = current_user.offers.build(offer_params)
    if @offer.save
      flash[:notice] = "Your offer was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    if current_user.id != @offer.user.id
      redirect_to root_path
      flash[:alert] = "You don't have permission"
    end
  end

  def destroy
    @offer.destroy
    flash[:notice] = "Your offer was removed successfully"
    redirect_to offers_path
  end

  def delete_images
    @offer = Offer.find(params[:room_id])
    if current_user.id == @offer.user.id
      index = params[:image_id]
      @offer.urls.delete_at(index.to_i)
      @offer.save
      respond_to :js
    else
      flash[:alert] = "You don't have permission"
      redirect_to root_path
    end
  end

  private
  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params[:offer][:urls] ||= []
    params.require(:room).permit(
      :home_type, :room_type, :accomdate,
      :bedroom, :bathroom, :listing_name,:city,
      :state, :summary, :address, :is_tv, :is_kitchen,
      :is_air, :is_heating, :is_internet, :price, urls: []
    )
  end
end
