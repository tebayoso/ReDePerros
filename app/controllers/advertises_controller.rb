class AdvertisesController < ApplicationController
  before_action :set_advertise, only: [:show]

  # GET /advertises
  # GET /advertises.json
  def index
    if params[:filter]
      @title = params[:filter].capitalize.pluralize
      @title = 'Adopciones' if @title == 'Adopcions'
      @advertises = Advertise.where(status: params[:filter])
    else
      @advertises = Advertise.all
    end
  end

  def user_advertises
    @advertises = current_user.advertises.all
  end

  # GET /advertises/1
  # GET /advertises/1.json
  def show
  end

  # GET /advertises/new
  def new
    @advertise = current_user.advertises.new
  end

  # GET /advertises/1/edit
  def edit
    @advertise = current_user.advertises.find(params[:id])
  end

  # POST /advertises
  # POST /advertises.json
  def create
    @advertise = current_user.advertises.new(advertise_params)

    respond_to do |format|
      if @advertise.save
        format.html { redirect_to @advertise, notice: 'Advertise was successfully created.' }
        format.json { render :show, status: :created, location: @advertise }
      else
        format.html { render :new }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advertises/1
  # PATCH/PUT /advertises/1.json
  def update
    @advertise = current_user.advertises.find(params[:id])
    respond_to do |format|
      if @advertise.update(advertise_params)
        format.html { redirect_to @advertise, notice: 'Advertise was successfully updated.' }
        format.json { render :show, status: :ok, location: @advertise }
      else
        format.html { render :edit }
        format.json { render json: @advertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertises/1
  # DELETE /advertises/1.json
  def destroy
    @advertise = current_user.advertises.find(params[:id])
    @advertise.destroy
    respond_to do |format|
      format.html { redirect_to advertises_url, notice: 'Advertise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertise
      @advertise = Advertise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertise_params
      params.require(:advertise).permit(:city, :comments, :status, :color1, :color2, :race, :street1, :street2, :name, :size, :when, :gender, :age, :image)
    end
end
