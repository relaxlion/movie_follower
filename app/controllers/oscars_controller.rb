class OscarsController < ApplicationController
  before_action :set_oscar, only: [:show, :edit, :update, :destroy]

  # GET /oscars
  # GET /oscars.json
  def index
    @oscars = Oscar.all
  end

  # GET /oscars/1
  # GET /oscars/1.json
  def show
  end

  # GET /oscars/new
  def new
    @oscar = Oscar.new
  end

  # GET /oscars/1/edit
  def edit
  end

  # POST /oscars
  # POST /oscars.json
  def create
    @oscar = Oscar.new(oscar_params)

    respond_to do |format|
      if @oscar.save
        format.html { redirect_to @oscar, notice: 'Oscar was successfully created.' }
        format.json { render :show, status: :created, location: @oscar }
      else
        format.html { render :new }
        format.json { render json: @oscar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oscars/1
  # PATCH/PUT /oscars/1.json
  def update
    respond_to do |format|
      if @oscar.update(oscar_params)
        format.html { redirect_to @oscar, notice: 'Oscar was successfully updated.' }
        format.json { render :show, status: :ok, location: @oscar }
      else
        format.html { render :edit }
        format.json { render json: @oscar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oscars/1
  # DELETE /oscars/1.json
  def destroy
    @oscar.destroy
    respond_to do |format|
      format.html { redirect_to oscars_url, notice: 'Oscar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oscar
      @oscar = Oscar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oscar_params
      params.require(:oscar).permit(:year, :best_picture_id, :best_director_id, :best_actor_id, :best_actress_id, :best_supporting_actor_id, :best_supporting_actress_id, :best_animated_feature_flim_id, :best_foreign_language_flim_id, :best_original_screenplay_id, :best_adapted_screenplay_id)
    end
end
