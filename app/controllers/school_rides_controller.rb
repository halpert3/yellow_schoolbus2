class SchoolRidesController < ApplicationController
  def new
    @school_ride = SchoolRide.new
    @kids = Kid.all
  end

  def create
    @school_ride = SchoolRide.new(school_ride_params)    
    if @school_ride.save
      redirect_to check_in_index_kids_path, notice: 'Have a good day at school!' 
    else
      flash[:alert] = "Not saved!"
    end
  end


  private

  def school_ride_params
    params.require(:school_ride).permit(:kid_id, :check_in_time)
  end

end
