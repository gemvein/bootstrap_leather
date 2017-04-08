class DooDadsController < ApplicationController
  before_action :set_doo_dad, only: [:show, :edit, :update, :destroy]

  # GET /doo_dads
  def index
    @doo_dads = DooDad.all
  end

  # GET /doo_dads/1
  def show
  end

  # GET /doo_dads/new
  def new
    @doo_dad = DooDad.new
  end

  # GET /doo_dads/1/edit
  def edit
  end

  # POST /doo_dads
  def create
    @doo_dad = DooDad.new(doo_dad_params)

    if @doo_dad.save
      redirect_to @doo_dad, notice: 'Doo dad was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /doo_dads/1
  def update
    if @doo_dad.update(doo_dad_params)
      redirect_to @doo_dad, notice: 'Doo dad was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /doo_dads/1
  def destroy
    @doo_dad.destroy
    redirect_to doo_dads_url, notice: 'Doo dad was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doo_dad
      @doo_dad = DooDad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doo_dad_params
      params.require(:doo_dad).permit(:name, :body)
    end
end
