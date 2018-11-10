class PuppersController < ApplicationController
  before_action :set_pupper, only: [:show, :edit, :update, :destroy]

  # GET /puppers
  # GET /puppers.json
  def index
    @puppers = Pupper.all
  end

  # GET /puppers/1
  # GET /puppers/1.json
  def show
    @comments = @pupper.comments.all
    @comment = @pupper.comments.build
  end

  # GET /puppers/new
  def new
    @pupper = Pupper.new
  end

  # GET /puppers/1/edit
  def edit
  end

  # POST /puppers
  # POST /puppers.json
  def create
    @pupper = Pupper.new(pupper_params)

    respond_to do |format|
      if @pupper.save
        format.html { redirect_to @pupper, notice: 'Pupper was successfully created.' }
        format.json { render :show, status: :created, location: @pupper }
      else
        format.html { render :new }
        format.json { render json: @pupper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puppers/1
  # PATCH/PUT /puppers/1.json
  def update
    respond_to do |format|
      if @pupper.update(pupper_params)
        format.html { redirect_to @pupper, notice: 'Pupper was successfully updated.' }
        format.json { render :show, status: :ok, location: @pupper }
      else
        format.html { render :edit }
        format.json { render json: @pupper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puppers/1
  # DELETE /puppers/1.json
  def destroy
    @pupper.destroy
    respond_to do |format|
      format.html { redirect_to puppers_url, notice: 'Pupper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupper
      @pupper = Pupper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupper_params
      params.require(:pupper).permit(:name, :description, :picture)
    end
end
