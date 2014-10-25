class NineThingsController < ApplicationController
  before_action :set_nine_thing, only: [:show, :edit, :update, :destroy]

  # GET /nine_things
  # GET /nine_things.json
  def index
    @nine_things = NineThing.all
  end

  # GET /nine_things/1
  # GET /nine_things/1.json
  def show
  end

  # GET /nine_things/new
  def new
    @nine_thing = NineThing.new
  end

  # GET /nine_things/1/edit
  def edit
  end

  # POST /nine_things
  # POST /nine_things.json
  def create
    @nine_thing = NineThing.new(nine_thing_params)

    respond_to do |format|
      if @nine_thing.save
        format.html { redirect_to @nine_thing, notice: 'Nine thing was successfully created.' }
        format.json { render :show, status: :created, location: @nine_thing }
      else
        format.html { render :new }
        format.json { render json: @nine_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nine_things/1
  # PATCH/PUT /nine_things/1.json
  def update
    respond_to do |format|
      if @nine_thing.update(nine_thing_params)
        format.html { redirect_to @nine_thing, notice: 'Nine thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @nine_thing }
      else
        format.html { render :edit }
        format.json { render json: @nine_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nine_things/1
  # DELETE /nine_things/1.json
  def destroy
    @nine_thing.destroy
    respond_to do |format|
      format.html { redirect_to nine_things_url, notice: 'Nine thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nine_thing
      @nine_thing = NineThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nine_thing_params
      params.require(:nine_thing).permit(:name, :nine_number)
    end
end
