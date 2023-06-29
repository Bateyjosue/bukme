class Api::V1::BusesController < ApplicationController
  before_action :set_api_v1_bus, only: %i[ show update destroy ]

  # GET /api/v1/buses
  def index
    @api_v1_buses = Bus.all

    render json: @api_v1_buses
  end

  # GET /api/v1/buses/1
  def show
    render json: @api_v1_bus
  end

  # POST /api/v1/buses
  def create
    @api_v1_bus = Api::V1::Bus.new(api_v1_bus_params)

    if @api_v1_bus.save
      render json: @api_v1_bus, status: :created, location: @api_v1_bus
    else
      render json: @api_v1_bus.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/buses/1
  def update
    if @api_v1_bus.update(api_v1_bus_params)
      render json: @api_v1_bus
    else
      render json: @api_v1_bus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/buses/1
  def destroy
    @api_v1_bus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_bus
      @api_v1_bus = Api::V1::Bus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_bus_params
      params.fetch(:api_v1_bus, {})
    end
end
