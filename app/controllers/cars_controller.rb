class CarsController < ApplicationController

  def index
    @cars = Car.all
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
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :year, :engine, :color, :type)
  end
end
