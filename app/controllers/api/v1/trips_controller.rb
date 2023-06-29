class Api::V1::TripsController < ApplicationController
  before_action :set_api_v1_trip, only: %i[ show update destroy ]

  # GET /api/v1/trips
  def index
    @api_v1_trips = Trip.all

    render json: @api_v1_trips
  end

  # GET /api/v1/trips/1
  def show
    render json: @api_v1_trip
  end

  # POST /api/v1/trips
  def create
    @api_v1_trip = Api::V1::Trip.new(api_v1_trip_params)

    if @api_v1_trip.save
      render json: @api_v1_trip, status: :created, location: @api_v1_trip
    else
      render json: @api_v1_trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/trips/1
  def update
    if @api_v1_trip.update(api_v1_trip_params)
      render json: @api_v1_trip
    else
      render json: @api_v1_trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/trips/1
  def destroy
    @api_v1_trip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_trip
      @api_v1_trip = Api::V1::Trip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_trip_params
      params.fetch(:api_v1_trip, {})
    end
end
