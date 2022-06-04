class TwettsController < ApplicationController
  before_action :set_twett, only: %i[ show edit update destroy ]

  # GET /twetts or /twetts.json
  def index
    @twetts = Twett.all
  end

  # GET /twetts/1 or /twetts/1.json
  def show
  end

  # GET /twetts/new
  def new
    @twett = Twett.new
  end

  # GET /twetts/1/edit
  def edit
  end

  # POST /twetts or /twetts.json
  def create
    @twett = Twett.new(twett_params)

    respond_to do |format|
      if @twett.save
        format.html { redirect_to twett_url(@twett), notice: "Twett was successfully created." }
        format.json { render :show, status: :created, location: @twett }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twett.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twetts/1 or /twetts/1.json
  def update
    respond_to do |format|
      if @twett.update(twett_params)
        format.html { redirect_to twett_url(@twett), notice: "Twett was successfully updated." }
        format.json { render :show, status: :ok, location: @twett }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twett.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twetts/1 or /twetts/1.json
  def destroy
    @twett.destroy

    respond_to do |format|
      format.html { redirect_to twetts_url, notice: "Twett was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twett
      @twett = Twett.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twett_params
      params.require(:twett).permit(:twett)
    end
end
