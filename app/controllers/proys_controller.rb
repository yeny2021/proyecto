class ProysController < ApplicationController
  #before_action :set_proy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /proys
  # GET /proys.json
  def index
    @proys = Proy.all
  end

  # GET /proys/1
  # GET /proys/1.json
  def show
  end

  # GET /proys/new
  def new
    @proy = Proy.new
  end

  # GET /proys/1/edit
  def edit
  end

  # POST /proys
  # POST /proys.json
  def create
    @proy = Proy.new(proy_params)

    respond_to do |format|
      if @proy.save
        format.html { redirect_to @proy, notice: 'Proy was successfully created.' }
        format.json { render :show, status: :created, location: @proy }
      else
        format.html { render :new }
        format.json { render json: @proy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proys/1
  # PATCH/PUT /proys/1.json
  def update
    respond_to do |format|
      if @proy.update(proy_params)
        format.html { redirect_to @proy, notice: 'Proy was successfully updated.' }
        format.json { render :show, status: :ok, location: @proy }
      else
        format.html { render :edit }
        format.json { render json: @proy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proys/1
  # DELETE /proys/1.json
  def destroy
    @proy.destroy
    respond_to do |format|
      format.html { redirect_to proys_url, notice: 'Proy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proy
      @proy = Proy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proy_params
      params.require(:proy).permit(:nombre, :imagen)
    end
end
