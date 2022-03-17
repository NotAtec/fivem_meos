class InwonerNotesController < ApplicationController
  before_action :set_inwoner_note, only: %i[ show edit update destroy ]

  # GET /inwoner_notes or /inwoner_notes.json
  def index
    @inwoner_notes = InwonerNote.all
  end

  # GET /inwoner_notes/1 or /inwoner_notes/1.json
  def show
  end

  # GET /inwoner_notes/new
  def new
    @inwoner_note = InwonerNote.new
  end

  # GET /inwoner_notes/1/edit
  def edit
  end

  # POST /inwoner_notes or /inwoner_notes.json
  def create
    @inwoner_note = InwonerNote.new(inwoner_note_params)

    respond_to do |format|
      if @inwoner_note.save
        format.html { redirect_to inwoner_note_url(@inwoner_note), notice: "Inwoner note was successfully created." }
        format.json { render :show, status: :created, location: @inwoner_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inwoner_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inwoner_notes/1 or /inwoner_notes/1.json
  def update
    respond_to do |format|
      if @inwoner_note.update(inwoner_note_params)
        format.html { redirect_to inwoner_note_url(@inwoner_note), notice: "Inwoner note was successfully updated." }
        format.json { render :show, status: :ok, location: @inwoner_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inwoner_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inwoner_notes/1 or /inwoner_notes/1.json
  def destroy
    @inwoner_note.destroy

    respond_to do |format|
      format.html { redirect_to inwoner_notes_url, notice: "Inwoner note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inwoner_note
      @inwoner_note = InwonerNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inwoner_note_params
      params.require(:inwoner_note).permit(:body, :user_id, :inwoner_id)
    end
end
