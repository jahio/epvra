class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]
  before_action :authenticate

  # GET /people
  def index
    @people = Person.all

    render json: @people
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

  #
  # Authenticate: Checks the X-Auth-Token header against what the user's auth
  # token should be.
  #
  def authenticate
    #
    # Look for X-Auth-Token in headers, and select based on it. That'll tell
    # you who the user is and prove that they're logged in.
    #
    @user = Person.find_by_auth_token(request.headers['HTTP_X_AUTH_TOKEN'])
    if @user.blank?
      render json: {status: "Not authorized"}, status: 401
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def person_params
    params.fetch(:person, {})
  end
end
