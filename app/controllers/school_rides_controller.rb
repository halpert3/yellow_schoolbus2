class SchoolRidesController < ApplicationController
  def new
    @school_ride = SchoolRide.new
    @kids = Kid.all
  end

  def create
    @school_ride = SchoolRide.new(school_ride_params)    
    redirect_to family_path
    if @school_ride.save
      flash[:success] = "Saved!"
    else
      flash[:alert] = "Not saved!"
    end
  
end


private

def school_ride_params
  params.require(:school_ride).permit(:test, :kid_id, :check_in)
end

end
 