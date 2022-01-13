class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]
  before_action :set_therapist, only: %i[create]

  def index
    @notes = Note.all
  end

  def show; end

  def new
    @note = Note.new
  end

  def edit; end

  def create
    @note = @therapist.notes.new(note_params) if @therapist.present?

    if @note.try(:save)
      render json: @note, status: :created, location: nil
    else
      render json: 'unprocessable_entity', status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to note_url(@note), notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy

    respond_to do |format|
      format.html { redirect_to notes_url, notice: "Note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content)
  end

  def set_therapist
    @therapist = Therapist.find_by(signature: params[:signature])
  end
end
