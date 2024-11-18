class CUsuariosController < ApplicationController
  before_action :set_c_usuario, only: %i[ show edit update destroy ]

  # GET /c_usuarios or /c_usuarios.json
  def index
    @c_usuarios = CUsuario.all
  end

  # GET /c_usuarios/1 or /c_usuarios/1.json
  def show
  end

  # GET /c_usuarios/new
  def new
    @c_usuario = CUsuario.new
  end

  # GET /c_usuarios/1/edit
  def edit
  end

  # POST /c_usuarios or /c_usuarios.json
  def create
    @c_usuario = CUsuario.new(c_usuario_params)

    respond_to do |format|
      if @c_usuario.save
        format.html { redirect_to @c_usuario, notice: "C usuario was successfully created." }
        format.json { render :show, status: :created, location: @c_usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_usuarios/1 or /c_usuarios/1.json
  def update
    respond_to do |format|
      if @c_usuario.update(c_usuario_params)
        format.html { redirect_to @c_usuario, notice: "C usuario was successfully updated." }
        format.json { render :show, status: :ok, location: @c_usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_usuarios/1 or /c_usuarios/1.json
  def destroy
    @c_usuario.destroy!

    respond_to do |format|
      format.html { redirect_to c_usuarios_path, status: :see_other, notice: "C usuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_usuario
      @c_usuario = CUsuario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_usuario_params
      params.expect(c_usuario: [ :cpf, :nome, :telefone, :g_endereco_id ])
    end
end
