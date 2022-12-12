class PowersController < ApplicationController
        # GET /powers
  def index
    powers = Power.all
    render json: powers
  end

  #  GET /powers/:id
  def show
    power = Power.find(params[:id])
    render json: power
  end

  # PATCH /powers/:id
  def update
    #find
    power = Power.find(params[:id])
    # update
    power.update!(power_params)
    render json: power
  end

  private

  def power_params
    params.permit(:id, :name, :description)
  end

  def unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def power_not_found
    render json: { error: "Power not found" }, status: :not_found
  end
end
