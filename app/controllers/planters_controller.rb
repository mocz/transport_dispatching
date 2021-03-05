class PlantersController < ApplicationController
  before_action :set_planter, only: %i[ show edit update destroy ]

  # GET /planters or /planters.json
  def index
    @planters = Planter.all
  end

  # GET /planters/1 or /planters/1.json
  def show
  end

  # GET /planters/new
  def new
    @planter = Planter.new
  end

  # GET /planters/1/edit
  def edit
  end

  # POST /planters or /planters.json
  def create
    @planter = Planter.new(planter_params)

    respond_to do |format|
      if @planter.save
        format.html { redirect_to @planter, notice: "Planter was successfully created." }
        format.json { render :show, status: :created, location: @planter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @planter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planters/1 or /planters/1.json
  def update
    respond_to do |format|
      if @planter.update(planter_params)
        format.html { redirect_to @planter, notice: "Planter was successfully updated." }
        format.json { render :show, status: :ok, location: @planter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @planter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planters/1 or /planters/1.json
  def destroy
    @planter.destroy
    respond_to do |format|
      format.html { redirect_to planters_url, notice: "Planter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planter
      @planter = Planter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planter_params
      params.require(:planter).permit(:name, :address, :contact_no)
    end
end
