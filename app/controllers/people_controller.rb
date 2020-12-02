class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all

    render :json => @people.as_json(methods: [:city_name, :case_name])
  end

  # GET /people/1
  def show
    render json: @person
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  def create_with_procedure
    ActiveRecord::Base.connection.execute("CALL create_user_with_risk_group('#{person_params['cpf']}', '#{person_params['name']}', '#{person_params['gender']}', '#{person_params['race']}', '#{person_params['birthdate']}', #{person_params['city_id']}, #{person_params['case_id']}, #{params['risk_group_id']})")
      
    render json: Person.last, status: :created
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:cpf, :name, :gender, :birthdate, :city_id, :case_id, :race)
    end
end
