class NotesController < ApplicationController
  def index
    @notes = Note.order(updated_at: :desc).page(params[:page]).per(10)
  end
end