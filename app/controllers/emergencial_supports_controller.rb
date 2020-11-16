class EmergencialSupportsController < ApplicationController
  before_action :set_emergencial_support, only: [:show, :update, :destroy]

  # GET /emergencial_supports
  def index
    @emergencial_supports = EmergencialSupport.all

    render json: @emergencial_supports
  end

  # GET /emergencial_supports/1
  def show
    render json: @emergencial_support
  end

  # POST /emergencial_supports
  def create
    @emergencial_support = EmergencialSupport.new(emergencial_support_params)

    if @emergencial_support.save
      render json: @emergencial_support, status: :created, location: @emergencial_support
    else
      render json: @emergencial_support.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emergencial_supports/1
  def update
    if @emergencial_support.update(emergencial_support_params)
      render json: @emergencial_support
    else
      render json: @emergencial_support.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emergencial_supports/1
  def destroy
    @emergencial_support.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergencial_support
      @emergencial_support = EmergencialSupport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def emergencial_support_params
      params.require(:emergencial_support).permit(:value, :date, :person_id)
    end
end
