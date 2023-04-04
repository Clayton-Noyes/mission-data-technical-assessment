class JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :update, :destroy]

  def index
    @journals = Journal.all
    render json: @journals
  end

  def show
    render json: @journal
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
      render json: @journal, status: :created, location: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  def update
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @journal.destroy
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:title, :subtitle, :description, :first_publishing_date, :publisher)
  end
end
