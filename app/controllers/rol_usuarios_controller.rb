class RolUsuariosController < ApplicationController
  before_action :set_rol_usuario, only: [:show, :edit, :update, :destroy]

  # GET /rol_usuarios
  # GET /rol_usuarios.json
  def index
    @rol_usuarios = RolUsuario.all
  end

  # GET /rol_usuarios/1
  # GET /rol_usuarios/1.json
  def show
  end

  # GET /rol_usuarios/new
  def new
    @rol_usuario = RolUsuario.new
  end

  # GET /rol_usuarios/1/edit
  def edit
  end

  # POST /rol_usuarios
  # POST /rol_usuarios.json
  def create
    @rol_usuario = RolUsuario.new(rol_usuario_params)

    respond_to do |format|
      if @rol_usuario.save
        format.html { redirect_to @rol_usuario, notice: 'Rol usuario was successfully created.' }
        format.json { render :show, status: :created, location: @rol_usuario }
      else
        format.html { render :new }
        format.json { render json: @rol_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rol_usuarios/1
  # PATCH/PUT /rol_usuarios/1.json
  def update
    respond_to do |format|
      if @rol_usuario.update(rol_usuario_params)
        format.html { redirect_to @rol_usuario, notice: 'Rol usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @rol_usuario }
      else
        format.html { render :edit }
        format.json { render json: @rol_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rol_usuarios/1
  # DELETE /rol_usuarios/1.json
  def destroy
    @rol_usuario.destroy
    respond_to do |format|
      format.html { redirect_to rol_usuarios_url, notice: 'Rol usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol_usuario
      @rol_usuario = RolUsuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rol_usuario_params
      params.require(:rol_usuario).permit(:user_id, :rol_id)
    end
end
