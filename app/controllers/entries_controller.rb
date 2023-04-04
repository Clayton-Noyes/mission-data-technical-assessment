class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]
  before_action :set_newest_entry, only: [:newest]

  def index
    @entries = Entry.all
    render json: @entries
  end

  def show
    render json: @entry
  end

  def create
    @entry = Entry.new(entries_params)
    if @entry.save
      render json: @entry, status: :created
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  def update
    if @entry.update(entries_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @entry.destroy
  end

  # Other actions
  def publish
    @entry = Entry.find(params[:id])
    @entry.publish!

    redirect_to entry_path(@entry)
  end

  def newest
    render json: @entry
  end

  private

  def set_entry
    @entry = Journal.find(params[:journal_id]).entries.find(params[:id])
  end

  def set_newest_entry
    @entry = Journal.find(params[:journal_id]).most_recent_entry
  end

  def entries_params
    params.require(:entry).permit(:title, :content, :published_at, :is_published, :journal_id)
  end
end
