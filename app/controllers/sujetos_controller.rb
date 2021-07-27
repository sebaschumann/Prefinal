class SujetosController < ApplicationController
  before_action :set_sujeto, only: %i[ show edit update destroy ]

  # GET /sujetos or /sujetos.json
  def index
    @sujetos = Sujeto.all
    @sujetos = @sujetos.order(:first_name).page(params[:page] || 1)
  end

  # GET /sujetos/1 or /sujetos/1.json
  def show
  end

  # GET /sujetos/new
  def new
    @sujeto = Sujeto.new
  end

  # GET /sujetos/1/edit
  def edit
  end

  # POST /sujetos or /sujetos.json
  def create
    @sujeto = Sujeto.new(sujeto_params)

    respond_to do |format|
      if @sujeto.save
        format.html { redirect_to @sujeto, notice: "Sujeto was successfully created." }
        format.json { render :show, status: :created, location: @sujeto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sujeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sujetos/1 or /sujetos/1.json
  def update
    respond_to do |format|
      if @sujeto.update(sujeto_params)
        format.html { redirect_to @sujeto, notice: "Sujeto was successfully updated." }
        format.json { render :show, status: :ok, location: @sujeto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sujeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sujetos/1 or /sujetos/1.json
  def destroy
    @sujeto.destroy
    respond_to do |format|
      format.html { redirect_to sujetos_url, notice: "Sujeto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sujeto
      @sujeto = Sujeto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sujeto_params
      params.require(:sujeto).permit(:first_name, :last_name, :document_number, :birthday)
    end
end
