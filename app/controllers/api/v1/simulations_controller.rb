class Api::V1::SimulationsController < ApplicationController
  before_action :set_api_v1_simulation, only: %i[ show update destroy ]

  # GET /api/v1/simulations
  def index
    @api_v1_simulations = Api::V1::Simulation.all

    render json: @api_v1_simulations
  end

  # GET /api/v1/simulations/1
  def show
    render json: @api_v1_simulation
  end

  # POST /api/v1/simulations
  def create
    @api_v1_simulation = Api::V1::Simulation.new(api_v1_simulation_params)

    if @api_v1_simulation.save
      render json: @api_v1_simulation, status: :created, location: @api_v1_simulation
    else
      render json: @api_v1_simulation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/simulations/1
  def update
    if @api_v1_simulation.update(api_v1_simulation_params)
      render json: @api_v1_simulation
    else
      render json: @api_v1_simulation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/simulations/1
  def destroy
    @api_v1_simulation.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_simulation
      @api_v1_simulation = Api::V1::Simulation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_simulation_params
      params.require(:api_v1_simulation).permit(:hoursDay, :daysWeek, :months, :tubesConfiguration)
    end
end
