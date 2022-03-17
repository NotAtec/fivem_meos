class InwonersController < ApplicationController
  before_action :set_inwoner, only: %i[ show edit update destroy ]

  # GET /inwoners or /inwoners.json
  def index
    @inwoners = Inwoner.all
  end

  # GET /inwoners/1 or /inwoners/1.json
  def show
  end

  # GET /inwoners/new
  def new
    @inwoner = Inwoner.new
  end

  # GET /inwoners/1/edit
  def edit
  end

  # POST /inwoners or /inwoners.json
  def create
    @inwoner = Inwoner.new(inwoner_params)

    respond_to do |format|
      if @inwoner.save
        format.html { redirect_to inwoner_url(@inwoner), notice: "Inwoner was successfully created." }
        format.json { render :show, status: :created, location: @inwoner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inwoner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inwoners/1 or /inwoners/1.json
  def update
    respond_to do |format|
      if @inwoner.update(inwoner_params)
        format.html { redirect_to inwoner_url(@inwoner), notice: "Inwoner was successfully updated." }
        format.json { render :show, status: :ok, location: @inwoner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inwoner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inwoners/1 or /inwoners/1.json
  def destroy
    @inwoner.destroy

    respond_to do |format|
      format.html { redirect_to inwoners_url, notice: "Inwoner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inwoner
      @inwoner = Inwoner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inwoner_params
      params.require(:inwoner).permit(:identifier, :firstname, :lastname, :dateofbirth, :sex)
    end
end
