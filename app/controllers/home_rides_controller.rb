class HomeRidesController < ApplicationController
  def new
    @home_ride = HomeRide.new
    @kids = Kid.all
  end

  def create
    @home_ride = HomeRide.new(home_ride_params)    
    if @home_ride.save
      redirect_to check_out_index_kids_path, notice: 'Welcome home.' 
    else
      flash[:alert] = "Not saved!"
    end
  end


  private

  def home_ride_params
    params.require(:school_ride).permit(:kid_id, :check_out_time)
  end

end
