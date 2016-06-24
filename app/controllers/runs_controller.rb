class RunsController < ProtectedController
  before_action :set_run, only: [:show, :update, :destroy]

  # GET /runs
  # GET /runs.json
  def index
    @runs = current_user.runs

    render json: @runs
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
    render json: Run.find(params[:id])
    # render json: @run
  end

  # POST /runs
  # POST /runs.json
  def create
    @run = current_user.runs.build(run_params)
    # @run = Run.new(run_params)

    if @run.save
      render json: @run, status: :created, location: @run_params
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /runs/1
  # PATCH/PUT /runs/1.json
  def update
    if @run.update(run_params)
      render json: @run, status: :ok
      # head :no_content
    else
      render json: @run.errors, status: :unprocessable_entity
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
  def destroy
    @run.destroy

    head :no_content
  end

  private

    def set_run
      @run = current_user.runs.find(params[:id])
    end

    def run_params
      params.require(:run).permit(:description, :total_miles, :total_time, :completion_date)
    end
end
