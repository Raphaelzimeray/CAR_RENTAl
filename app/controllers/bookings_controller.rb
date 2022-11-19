class BookingsController < ApplicationController

  def index
    @bookings = Booking.all.where(user_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
    @car = Car.find(params[:car_id])
      if @booking.save
        redirect_to booking_path(@booking)
      else
        render :new
      end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to cars_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to cars_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
