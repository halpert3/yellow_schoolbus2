class FamiliesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_family, only: [:show, :edit, :update, :destroy, :newchild]

#   GET /families
#   GET /families.json
  
  def index
    @families = Family.all.order(:fname)
  end

  # GET /families/1
  # GET /families/1.json
  def show
    @kid = Kid.all 
  end
  
  def newchild
    @kid = Kid.new # Allows the kid form to work (rendered) in the family view
  end

  # GET /families/new
  def new
    @family = Family.new
  end

  # GET /families/1/edit
  def edit
  end

  # POST /families
  # POST /families.json
  def create
    @family = Family.new(family_params)

    respond_to do |format|
      if @family.save
        format.html { redirect_to @family, notice: 'Family was successfully created.' }
        format.json { render :show, status: :created, location: @family }
      else
        format.html { render :new }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /families/1
  # PATCH/PUT /families/1.json
  def update
    respond_to do |format|
      if @family.update(family_params)
        format.html { redirect_to @family, notice: 'Family was successfully updated.' }
        format.json { render :show, status: :ok, location: @family }
      else
        format.html { render :edit }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family.destroy
    respond_to do |format|
      format.html { redirect_to families_url, notice: 'Family was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_family
    @family = Family.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def family_params
    params.require(:family).permit(:parent1_name, :parent1_phone, :parent2_name, :parent2_phone, :fname)
  end
end
