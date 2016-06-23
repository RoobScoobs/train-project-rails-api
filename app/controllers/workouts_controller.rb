class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = current_user.workouts

    render json: @workouts
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    render json: @workout
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @example = current_user.workouts.build(workout_params)

    if @example.save
      render json: @example, status: :created, location: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    if @workout.update(workout_params)
      head :no_content
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy

    head :no_content
  end

  private

    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end

    def workout_params
      params.require(:workout).permit(:user_id, :name_of_workout, :description, :total_distance, :completion_time, :completion_date)
    end
end
