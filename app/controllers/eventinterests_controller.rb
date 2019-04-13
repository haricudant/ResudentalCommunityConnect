class EventinterestsController < ApplicationController
  before_action :set_eventinterest, only: [:show, :edit, :update, :destroy]

  # GET /eventinterests
  # GET /eventinterests.json
  def index
    @eventinterests = Eventinterest.all
  end

  # GET /eventinterests/1
  # GET /eventinterests/1.json
  def show
  end

  # GET /eventinterests/new
  def new
    @eventinterest = Eventinterest.new
  end

  # GET /eventinterests/1/edit
  def edit
  end

  # POST /eventinterests
  # POST /eventinterests.json
  def create
    @eventinterest = Eventinterest.new(eventinterest_params)

    respond_to do |format|
      if @eventinterest.save
        format.html { redirect_to @eventinterest, notice: 'Eventinterest was successfully created.' }
        format.json { render :show, status: :created, location: @eventinterest }
      else
        format.html { render :new }
        format.json { render json: @eventinterest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventinterests/1
  # PATCH/PUT /eventinterests/1.json
  def update
    respond_to do |format|
      if @eventinterest.update(eventinterest_params)
        format.html { redirect_to @eventinterest, notice: 'Eventinterest was successfully updated.' }
        format.json { render :show, status: :ok, location: @eventinterest }
      else
        format.html { render :edit }
        format.json { render json: @eventinterest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventinterests/1
  # DELETE /eventinterests/1.json
  def destroy
    @eventinterest.destroy
    respond_to do |format|
      format.html { redirect_to eventinterests_url, notice: 'Eventinterest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventinterest
      @eventinterest = Eventinterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventinterest_params
      params.require(:eventinterest).permit(:isinterest, :user_id, :events_id)
    end
end
