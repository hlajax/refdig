class ApprenantsController < ApplicationController
  before_action :set_apprenant, only: [:show, :edit, :update, :destroy]

  # GET /apprenants
  # GET /apprenants.json
  def index
    @apprenants = Apprenant.all
  end

  # GET /apprenants/1
  # GET /apprenants/1.json
  def show
  end

  # GET /apprenants/new
  def new
    @apprenant = Apprenant.new
  end

  # GET /apprenants/1/edit
  def edit
  end

  # POST /apprenants
  # POST /apprenants.json
  def create
    @apprenant = Apprenant.new(apprenant_params)

    respond_to do |format|
      if @apprenant.save
        format.html { redirect_to @apprenant, notice: 'Apprenant was successfully created.' }
        format.json { render :show, status: :created, location: @apprenant }
      else
        format.html { render :new }
        format.json { render json: @apprenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apprenants/1
  # PATCH/PUT /apprenants/1.json
  def update
    respond_to do |format|
      if @apprenant.update(apprenant_params)
        format.html { redirect_to @apprenant, notice: 'Apprenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @apprenant }
      else
        format.html { render :edit }
        format.json { render json: @apprenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprenants/1
  # DELETE /apprenants/1.json
  def destroy
    @apprenant.destroy
    respond_to do |format|
      format.html { redirect_to apprenants_url, notice: 'Apprenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprenant
      @apprenant = Apprenant.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apprenant_params
      params.require(:apprenant).permit(:nom, :prenoms, :telephone, :mail, :formation, :description, :attentes, :projet, :sexe_id, :etat_id, :photo)
    end
end
