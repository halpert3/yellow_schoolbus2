class SchoolRidesController < ApplicationController
  def new
    @school_ride = SchoolRide.new
    @kids = Kid.all
  end

  def create
    @school_ride = SchoolRide.new(school_ride_params)    

    if @kid.save
      format.html { redirect_to family_path(id: @kid.family_id), notice: 'Kid was successfully created.' }
      format.json { render :show, status: :created, location: @kid }
    end
  end


  private

  def school_ride_params
    params.require(:school_ride).permit(:check_in, :kid_id, :test)
  end

end
