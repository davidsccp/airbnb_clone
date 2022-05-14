class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :destroy,]
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

  # def edit
  #   if current_user.id != @offer.user.id
  #     redirect_to root_path
  #     flash[:alert] = "You don't have permission"
  #   end
  # end

  def destroy
    @offer.destroy
    flash[:notice] = "Your offer was removed successfully"
    redirect_to offers_path
  end


  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params[:offer] ||= []
    params.require(:offer).permit(
      :address, :capacity,
      :city, :description,
      :state,
      :title, :price
    )
  end
end
