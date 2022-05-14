class TransactionController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservation.all
  end

  def new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @transaction = current_user.transactions.build(transaction_params)
    @nights = params[:nights]
    if @transaction.save
      render 'payment'
    else
      flash[:alert] = "Something went wrong"
      redirect_to offer_path(@offer)
    end
  end

  def payment
  end

  def checkout
    @offer = Offer.find(params[:offer_id])
    @transaction = @offer.transactions.find(params[:transaction_id]);
    begin
      @amount = params[:price]
      user = Stripe::User.create({
        email: current_user.email,
        source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        user: user.id,
        amount: @amount.to_i,
        description: 'AirBnB customer',
        currency: 'BRL',
      })
    rescue Stripe::CardError => e
      charge_error = e.message
    end

    if charge_error
      @transaction.destroy
      flash[:alert] = charge_error
      redirect_to offer_path(@offer)
    else
      flash[:notice] = "Your place was booked!"
      redirect_to trips_path
    end
  end

  def destroy
    @offer = Offer.find(params[:offer_id])
    @transaction = @offer.transactions.find(params[:id])
    @transaction.destroy
    flash[:alert] = "Your booking was cancelled"
    redirect_to trips_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:start_date, :end_date, :price, :total, :offer_id, :nights)
  end
end
