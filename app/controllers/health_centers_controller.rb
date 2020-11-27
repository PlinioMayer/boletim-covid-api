class HealthCentersController < ApplicationController
  before_action :set_health_center, only: [:show, :update, :destroy]

  # GET /health_centers
  def index
    @health_centers = HealthCenter.all

    render json: @health_centers.as_json(methods: [:city_name])
  end

  # GET /health_centers/1
  def show
    render json: @health_center
  end

  # POST /health_centers
  def create
    @health_center = HealthCenter.new(health_center_params)

    if @health_center.save
      render json: @health_center, status: :created, location: @health_center
    else
      render json: @health_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /health_centers/1
  def update
    if @health_center.update(health_center_params)
      render json: @health_center
    else
      render json: @health_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /health_centers/1
  def destroy
    @health_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_center
      @health_center = HealthCenter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health_center_params
      params.require(:health_center).permit(:total, :occupied, :address, :city_id, :name)
    end
end
