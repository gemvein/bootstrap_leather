class WhatzitsController < ApplicationController
  before_action :set_whatzit, only: [:show, :edit, :update, :destroy]

  # GET /whatzits
  def index
    @whatzits = Whatzit.all
  end

  # GET /whatzits/1
  def show
  end

  # GET /whatzits/new
  def new
    @whatzit = Whatzit.new
  end

  # GET /whatzits/1/edit
  def edit
  end

  # POST /whatzits
  def create
    @whatzit = Whatzit.new(whatzit_params)

    if @whatzit.save
      redirect_to @whatzit, notice: 'Whatzit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /whatzits/1
  def update
    if @whatzit.update(whatzit_params)
      redirect_to @whatzit, notice: 'Whatzit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /whatzits/1
  def destroy
    @whatzit.destroy
    redirect_to whatzits_url, notice: 'Whatzit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whatzit
      @whatzit = Whatzit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def whatzit_params
      params.require(:whatzit).permit(:name, :description)
    end
end
