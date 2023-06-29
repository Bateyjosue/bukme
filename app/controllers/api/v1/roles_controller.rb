class Api::V1::RolesController < ApplicationController
  before_action :set_api_v1_role, only: %i[ show update destroy ]

  # GET /api/v1/roles
  def index
    @api_v1_roles = Role.all

    render json: @api_v1_roles
  end

  # GET /api/v1/roles/1
  def show
    render json: @api_v1_role
  end

  # POST /api/v1/roles
  def create
    @api_v1_role = Api::V1::Role.new(api_v1_role_params)

    if @api_v1_role.save
      render json: @api_v1_role, status: :created, location: @api_v1_role
    else
      render json: @api_v1_role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/roles/1
  def update
    if @api_v1_role.update(api_v1_role_params)
      render json: @api_v1_role
    else
      render json: @api_v1_role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/roles/1
  def destroy
    @api_v1_role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_role
      @api_v1_role = Role.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_role_params
      params.fetch(:api_v1_role, {})
    end
end
