class LapsController < ApplicationController
  before_action :set_lap, only: %i[ show edit update destroy ]

  # GET /laps or /laps.json
  def index
    @laps = Lap.all
    @laps = @laps.order((params[:by] || "number") + " " + (params[:order] || "asc"))
    
  end

  # GET /laps/1 or /laps/1.json
  def show
  end

  # GET /laps/new
  def new
    @lap = Lap.new
  end

  # GET /laps/1/edit
  def edit
  end

  # POST /laps or /laps.json
  def create
    @lap = Lap.new(lap_params)

    respond_to do |format|
      if @lap.save
        format.html { redirect_to @lap, notice: "Lap was successfully created." }
        format.json { render :show, status: :created, location: @lap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laps/1 or /laps/1.json
  def update
    respond_to do |format|
      if @lap.update(lap_params)
        format.html { redirect_to @lap, notice: "Lap was successfully updated." }
        format.json { render :show, status: :ok, location: @lap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laps/1 or /laps/1.json
  def destroy
    @lap.destroy
    respond_to do |format|
      format.html { redirect_to laps_url, notice: "Lap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lap
      @lap = Lap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lap_params
      params.require(:lap).permit(:number, :position, :time, :pilot_id, :race_id)
    end
end
