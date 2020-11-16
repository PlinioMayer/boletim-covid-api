class RiskGroupsController < ApplicationController
  before_action :set_risk_group, only: [:show, :update, :destroy]

  # GET /risk_groups
  def index
    @risk_groups = RiskGroup.all

    render json: @risk_groups
  end

  # GET /risk_groups/1
  def show
    render json: @risk_group
  end

  # POST /risk_groups
  def create
    @risk_group = RiskGroup.new(risk_group_params)

    if @risk_group.save
      render json: @risk_group, status: :created, location: @risk_group
    else
      render json: @risk_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risk_groups/1
  def update
    if @risk_group.update(risk_group_params)
      render json: @risk_group
    else
      render json: @risk_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risk_groups/1
  def destroy
    @risk_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_group
      @risk_group = RiskGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_group_params
      params.require(:risk_group).permit(:name)
    end
end
