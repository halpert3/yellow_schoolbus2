class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy, :check_in_one_kid, :check_out_one_kid]


  # GET /kids
  # GET /kids.json
  def index
    @kids = Kid.all
  end

  def check_in_index
    @kids = Kid.all
  end

  def check_out_index
    @kids = Kid.all
  end

  # GET /kids/1
  # GET /kids/1.json
  def show
    @family = Family.all
    @school_ride = SchoolRide.new
  end

  def check_in_one_kid
    @family = Family.all
    @school_ride = SchoolRide.new
  end

  def check_out_one_kid
    @family = Family.all
    @home_ride = HomeRide.new
  end

  # GET /kids/new
  def new
    @kid = Kid.new
  end

  # GET /kids/1/edit
  def edit
  end

  # POST /kids
  # POST /kids.json
  def create
    @kid = Kid.new(kid_params)

    respond_to do |format|
      if @kid.save
        format.html { redirect_to family_path(id: @kid.family_id), notice: 'Kid was successfully created.' }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end


  end

  # PATCH/PUT /kids/1
  # PATCH/PUT /kids/1.json
  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to @kid, notice: 'Kid was successfully updated.' }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kids/1
  # DELETE /kids/1.json
  def destroy
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to kids_url, notice: 'Kid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_kid
    @kid = Kid.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kid_params
    params.require(:kid).permit(:name, :birthdate, :grade, :family_id)
  end  


end
