class CarsController < ApplicationController

  def index
    if params[:query].present?
      @cars = Car.where("brand ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.all
    end

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
      if @car.save
        redirect_to car_path(@car)
      else
        render :new
      end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car.update(car_params)
    redirect_to cars_path
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :year, :engine, :color, :type, photos: [])
  end
end
