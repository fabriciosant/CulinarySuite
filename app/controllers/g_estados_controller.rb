class GEstadosController < ApplicationController
  before_action :set_g_estado, only: %i[ show edit update destroy ]

  # GET /g_estados or /g_estados.json
  def index
    @g_estados = GEstado.all
  end

  # GET /g_estados/1 or /g_estados/1.json
  def show
  end

  # GET /g_estados/new
  def new
    @g_estado = GEstado.new
  end

  # GET /g_estados/1/edit
  def edit
  end

  # POST /g_estados or /g_estados.json
  def create
    @g_estado = GEstado.new(g_estado_params)

    if @g_estado.save
      redirect_to g_estados_path, notice: "Estado '#{@g_estado.nome}' criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /g_estados/1 or /g_estados/1.json
  def update
    if @g_estado.update(g_estado_params)
      redirect_to g_estados_path, notice: "'#{@g_estado.nome}' atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /g_estados/1 or /g_estados/1.json
  def destroy
    @g_estado.destroy!

    redirect_to g_estados_path, status: :see_other, notice: "'#{@g_estado.nome}' deletado com sucesso!"
  end

  private

    def nome
      @g_estado&.nome || "Nome não disponivel."
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_g_estado
      @g_estado = GEstado.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def g_estado_params
      params.expect(g_estado: [ :nome, :g_cidade_id ])
      params.require(:g_estado).permit(:nome)
    end
end
