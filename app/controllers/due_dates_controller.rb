class DueDatesController < ApplicationController
  before_action :set_due_date, only: [:show, :update, :destroy]

  # GET /due_dates
  def index
    @due_dates = DueDate.all

    render json: @due_dates
  end

  # GET /due_dates/1
  def show
    render json: @due_date
  end

  # POST /due_dates
  def create
    @due_date = DueDate.new(due_date_params)

    if @due_date.save
      render json: @due_date, status: :created, location: @due_date
    else
      render json: @due_date.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /due_dates/1
  def update
    if @due_date.update(due_date_params)
      render json: @due_date
    else
      render json: @due_date.errors, status: :unprocessable_entity
    end
  end

  # DELETE /due_dates/1
  def destroy
    @due_date.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_due_date
      @due_date = DueDate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def due_date_params
      params.require(:due_date).permit(:date)
    end
end
