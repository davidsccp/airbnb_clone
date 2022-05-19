class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, except: [:index]


  def index
    if params[:query].present?
      @offers = policy_scope(Offer).search_by_title_city_state_address_and_description(params[:query]).order(created_at: :desc)
    else
      @offers = policy_scope(Offer).order(created_at: :desc)
    end
  end

  def new
    # @offer = current_user.offers.build
    @offer = Offer.new
    authorize @offer
    # return true
  end

  def create
    @offer = current_user.offers.build(offer_params)
    authorize @offer
    if @offer.save
      flash[:notice] = "Your offer was successfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    authorize @offer
  end

  def edit
    authorize @offer
  end

  def update
    authorize @offer
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  # def edit
  #   if current_user.id != @offer.user.id
  #     redirect_to root_path
  #     flash[:alert] = "You don't have permission"
  #   end
  # end

  def destroy
    authorize @offer
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
