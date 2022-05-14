class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def search
    @address = params[:address]
    @state = params[:state]
    @city = params[:city]
    @checkin = params[:checkin]
    @checkout = params[:checkout]
    @guests = params[:guests] || 1
    # @stays = Room.search(@location)
    # if @stays.blank?
     #  @rooms = Rooms.all
end

end



  #skip_before_action :authenticate_user!, only: :home
  # def home
  # end

  # def dashboard
    # pegar todas reservas onde user id = user id atual
    # criar rota para esse metodo
    # @bookings = Booking.where(user_id: current_user).order(:start_date)
# end
