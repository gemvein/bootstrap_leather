class ErbitsController < ApplicationController
  before_action :set_erbit, only: [:show, :edit, :update, :destroy]

  # GET /erbits
  def index
    @erbits = Erbit.all
  end

  # GET /erbits/1
  def show
  end

  # GET /erbits/new
  def new
    @erbit = Erbit.new
  end

  # GET /erbits/1/edit
  def edit
  end

  # POST /erbits
  def create
    @erbit = Erbit.new(erbit_params)

    if @erbit.save
      redirect_to @erbit, notice: 'Erbit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /erbits/1
  def update
    if @erbit.update(erbit_params)
      redirect_to @erbit, notice: 'Erbit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /erbits/1
  def destroy
    @erbit.destroy
    redirect_to erbits_url, notice: 'Erbit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_erbit
      @erbit = Erbit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def erbit_params
      params.require(:erbit).permit(:name, :description)
    end
end
