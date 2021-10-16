class OrdenProductosController < ApplicationController
  before_action :set_orden_producto, only: [:show, :edit, :update, :destroy]

  # GET /orden_productos
  # GET /orden_productos.json
  def index
    @orden_productos = OrdenProducto.all
  end

  # GET /orden_productos/1
  # GET /orden_productos/1.json
  def show
  end

  # GET /orden_productos/new
  def new
    @orden_producto = OrdenProducto.new
  end

  # GET /orden_productos/1/edit
  def edit
  end

  # POST /orden_productos
  # POST /orden_productos.json
  def create
    @orden_producto = OrdenProducto.new(orden_producto_params)

    respond_to do |format|
      if @orden_producto.save
        format.html { redirect_to @orden_producto, notice: 'Orden producto was successfully created.' }
        format.json { render :show, status: :created, location: @orden_producto }
      else
        format.html { render :new }
        format.json { render json: @orden_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orden_productos/1
  # PATCH/PUT /orden_productos/1.json
  def update
    respond_to do |format|
      if @orden_producto.update(orden_producto_params)
        format.html { redirect_to @orden_producto, notice: 'Orden producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_producto }
      else
        format.html { render :edit }
        format.json { render json: @orden_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orden_productos/1
  # DELETE /orden_productos/1.json
  def destroy
    @orden_producto.destroy
    respond_to do |format|
      format.html { redirect_to orden_productos_url, notice: 'Orden producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_producto
      @orden_producto = OrdenProducto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_producto_params
      params.require(:orden_producto).permit(:orden_id, :prodcuto_id, :cantidad, :precio, :instrucciones)
    end
end
