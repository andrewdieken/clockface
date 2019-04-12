class InterimsController < ApplicationController
  before_action :set_interim, only: [:show, :edit, :update, :destroy]

  # GET /interims
  def index
    @interims = Interim.all
  end

  # GET /interims/1
  def show
  end

  # GET /interims/new
  def new
    @interim = Interim.new
  end

  # GET /interims/1/edit
  def edit
  end

  # POST /interims
  def create
    @interim = Interim.new(interim_params)

    if @interim.save
      redirect_to @interim, notice: 'Interim was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /interims/1
  def update
    if @interim.update(interim_params)
      redirect_to @interim, notice: 'Interim was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /interims/1
  def destroy
    @interim.destroy
    redirect_to interims_url, notice: 'Interim was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interim
      @interim = Interim.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interim_params
      params.require(:interim).permit(:start, :stop, :shift_id)
    end
end
