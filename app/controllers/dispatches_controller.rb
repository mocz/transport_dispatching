class DispatchesController < ApplicationController
  before_action :set_dispatch, only: %i[ show edit update destroy ]

  # GET /dispatches or /dispatches.json
  def index
    @pagy, @dispatches = pagy(Dispatch.all, items:10)

    respond_to do |format|
      format.html
    end
  end

  # GET /dispatches/1 or /dispatches/1.json
  def show
  end

  # GET /dispatches/new
  def new
    @dispatch = Dispatch.new
  end

  # GET /dispatches/1/edit
  def edit
  end

  # Get /dispatches/in
  def in
  end

  # POST /dispatches or /dispatches.json
  def create
    @dispatch = Dispatch.new(dispatch_params)

    respond_to do |format|
      if @dispatch.save
        format.html { redirect_to @dispatch, notice: "Dispatch was successfully created." }
        format.json { render :show, status: :created, location: @dispatch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dispatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispatches/1 or /dispatches/1.json
  def update
    respond_to do |format|
      if @dispatch.update(dispatch_params)
        format.html { redirect_to @dispatch, notice: "Dispatch was successfully updated." }
        format.json { render :show, status: :ok, location: @dispatch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dispatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatches/1 or /dispatches/1.json
  def destroy
    @dispatch.destroy
    respond_to do |format|
      format.html { redirect_to dispatches_url, notice: "Dispatch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatch
      @dispatch = Dispatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dispatch_params
      params.require(:dispatch).permit(:status, :description, :time_arrived, :driver_id, :plantation_id)
    end
end
