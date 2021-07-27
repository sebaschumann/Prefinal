class TeamPilotsController < ApplicationController
  before_action :set_team_pilot, only: %i[ show edit update destroy ]

  # GET /team_pilots or /team_pilots.json
  def index
    @team_pilots = TeamPilot.all

  @team_pilots = @team_pilots.joins(:pilot).where([" first_name LIKE :filter OR last_name LIKE :filter", :filter => "%" + params[:filter] + "%"]) unless params[:filter].blank?
  @team_pilots = @team_pilots.joins(:team).where([" name LIKE :filter2 ", :filter2 => "%" + params[:filter2] + "%"]) unless params[:filter2].blank?
  @team_pilots = @team_pilots.where(:team_id => params[:team_id]) unless params[:team_id].blank?

  end

  # GET /team_pilots/1 or /team_pilots/1.json
  def show
  end

  # GET /team_pilots/new
  def new
    @team_pilot = TeamPilot.new
  end

  # GET /team_pilots/1/edit
  def edit
  end

  # POST /team_pilots or /team_pilots.json
  def create
    @team_pilot = TeamPilot.new(team_pilot_params)

    respond_to do |format|
      if @team_pilot.save
        format.html { redirect_to @team_pilot, notice: "Team pilot was successfully created." }
        format.json { render :show, status: :created, location: @team_pilot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_pilots/1 or /team_pilots/1.json
  def update
    respond_to do |format|
      if @team_pilot.update(team_pilot_params)
        format.html { redirect_to @team_pilot, notice: "Team pilot was successfully updated." }
        format.json { render :show, status: :ok, location: @team_pilot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_pilots/1 or /team_pilots/1.json
  def destroy
    @team_pilot.destroy
    respond_to do |format|
      format.html { redirect_to team_pilots_url, notice: "Team pilot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_pilot
      @team_pilot = TeamPilot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_pilot_params
      params.require(:team_pilot).permit(:pilot_id, :team_id, :championship_id)
    end
end
