class PeopleRiskGroupsController < ApplicationController
  before_action :set_people_risk_group, only: [:show, :update, :destroy]

  # GET /people_risk_groups
  def index
    @people_risk_groups = PeopleRiskGroup.all

    render json: @people_risk_groups
  end

  # GET /people_risk_groups/1
  def show
    render json: @people_risk_group
  end

  # POST /people_risk_groups
  def create
    @people_risk_group = PeopleRiskGroup.new(people_risk_group_params)

    if @people_risk_group.save
      render json: @people_risk_group, status: :created, location: @people_risk_group
    else
      render json: @people_risk_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people_risk_groups/1
  def update
    if @people_risk_group.update(people_risk_group_params)
      render json: @people_risk_group
    else
      render json: @people_risk_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people_risk_groups/1
  def destroy
    @people_risk_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_risk_group
      @people_risk_group = PeopleRiskGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def people_risk_group_params
      params.require(:people_risk_group).permit(:person_id, :risk_group_id)
    end
end
