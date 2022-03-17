class VehicleNotesController < ApplicationController
  before_action :set_vehicle_note, only: %i[ show edit update destroy ]

  # GET /vehicle_notes or /vehicle_notes.json
  def index
    @vehicle_notes = VehicleNote.all
  end

  # GET /vehicle_notes/1 or /vehicle_notes/1.json
  def show
  end

  # GET /vehicle_notes/new
  def new
    @vehicle_note = VehicleNote.new
  end

  # GET /vehicle_notes/1/edit
  def edit
  end

  # POST /vehicle_notes or /vehicle_notes.json
  def create
    @vehicle_note = VehicleNote.new(vehicle_note_params)

    respond_to do |format|
      if @vehicle_note.save
        format.html { redirect_to vehicle_note_url(@vehicle_note), notice: "Vehicle note was successfully created." }
        format.json { render :show, status: :created, location: @vehicle_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vehicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_notes/1 or /vehicle_notes/1.json
  def update
    respond_to do |format|
      if @vehicle_note.update(vehicle_note_params)
        format.html { redirect_to vehicle_note_url(@vehicle_note), notice: "Vehicle note was successfully updated." }
        format.json { render :show, status: :ok, location: @vehicle_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vehicle_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_notes/1 or /vehicle_notes/1.json
  def destroy
    @vehicle_note.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_notes_url, notice: "Vehicle note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_note
      @vehicle_note = VehicleNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_note_params
      params.require(:vehicle_note).permit(:body, :vehicle_id, :user_id)
    end
end
