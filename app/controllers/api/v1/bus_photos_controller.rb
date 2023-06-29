class Api::V1::BusPhotosController < ApplicationController
  before_action :set_api_v1_bus_photo, only: %i[ show update destroy ]

  # GET /api/v1/bus_photos
  def index
    @api_v1_bus_photos = BusPhoto.all

    render json: @api_v1_bus_photos
  end

  # GET /api/v1/bus_photos/1
  def show
    render json: @api_v1_bus_photo
  end

  # POST /api/v1/bus_photos
  def create
    @api_v1_bus_photo = Api::V1::BusPhoto.new(api_v1_bus_photo_params)

    if @api_v1_bus_photo.save
      render json: @api_v1_bus_photo, status: :created, location: @api_v1_bus_photo
    else
      render json: @api_v1_bus_photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/bus_photos/1
  def update
    if @api_v1_bus_photo.update(api_v1_bus_photo_params)
      render json: @api_v1_bus_photo
    else
      render json: @api_v1_bus_photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/bus_photos/1
  def destroy
    @api_v1_bus_photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_bus_photo
      @api_v1_bus_photo = Api::V1::BusPhoto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_bus_photo_params
      params.fetch(:api_v1_bus_photo, {})
    end
end
