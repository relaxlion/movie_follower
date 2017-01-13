class GoldenHorsesController < ApplicationController
  before_action :set_golden_horse, only: [:show, :edit, :update, :destroy]

  # GET /golden_horses
  # GET /golden_horses.json
  def index
    @golden_horses = GoldenHorse.all
  end

  # GET /golden_horses/1
  # GET /golden_horses/1.json
  def show
  end

  # GET /golden_horses/new
  def new
    @golden_horse = GoldenHorse.new
  end

  # GET /golden_horses/1/edit
  def edit
  end

  # POST /golden_horses
  # POST /golden_horses.json
  def create
    @golden_horse = GoldenHorse.new(golden_horse_params)

    respond_to do |format|
      if @golden_horse.save
        format.html { redirect_to @golden_horse, notice: 'Golden horse was successfully created.' }
        format.json { render :show, status: :created, location: @golden_horse }
      else
        format.html { render :new }
        format.json { render json: @golden_horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golden_horses/1
  # PATCH/PUT /golden_horses/1.json
  def update
    respond_to do |format|
      if @golden_horse.update(golden_horse_params)
        format.html { redirect_to @golden_horse, notice: 'Golden horse was successfully updated.' }
        format.json { render :show, status: :ok, location: @golden_horse }
      else
        format.html { render :edit }
        format.json { render json: @golden_horse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golden_horses/1
  # DELETE /golden_horses/1.json
  def destroy
    @golden_horse.destroy
    respond_to do |format|
      format.html { redirect_to golden_horses_url, notice: 'Golden horse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golden_horse
      @golden_horse = GoldenHorse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golden_horse_params
      params.require(:golden_horse).permit(:year, :best_newcomer_id, :best_supporting_actor_id, :best_supporting_actress_id, :best_actor_id, :best_actress_id, :best_screenplay_id, :best_director_id)
    end
end
