class CTiposPagamentosController < ApplicationController
  before_action :set_c_tipo_pagamento, only: %i[ show edit update destroy ]
  # GET /c_tipos_pagamentos or /c_tipos_pagamentos.json
  def index
    @c_tipos_pagamentos = CTipoPagamento.all
  end

  # GET /c_tipos_pagamentos/1 or /c_tipos_pagamentos/1.json
  def show
  end

  # GET /c_tipos_pagamentos/new
  def new
    @c_tipo_pagamento = CTipoPagamento.new
  end

  # GET /c_tipos_pagamentos/1/edit
  def edit
  end

  # POST /c_tipos_pagamentos or /c_tipos_pagamentos.json
  def create
    @c_tipo_pagamento = CTipoPagamento.new(c_tipo_pagamento_params)

    if @c_tipo_pagamento.save
      redirect_to c_tipos_pagamentos_path, notice: "Tipo de pagamento '#{@c_tipo_pagamento.descricao}' criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /c_tipos_pagamentos/1 or /c_tipos_pagamentos/1.json
  def update
    if @c_tipo_pagamento.update(c_tipo_pagamento_params)
      redirect_to c_tipos_pagamentos_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /c_tipos_pagamentos/1 or /c_tipos_pagamentos/1.json
  def destroy
    if @c_tipo_pagamento.destroy
      redirect_to c_tipos_pagamentos_path, notice: "Tipo de pagamento '#{@c_tipo_pagamento.descricao}' deletado com sucesso!"
    else
      redirect_to c_tipos_pagamentos_path, alert: "Erro ao deletar o tipo de pagamento"
    end
  end

  private

    def descricao
      @c_tipo_pagamento&.descricao || "Descricao não disponivel"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_c_tipo_pagamento
      @c_tipo_pagamento = CTipoPagamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def c_tipo_pagamento_params
      params.expect(c_tipo_pagamento: [ :descricao ])
      params.require(:c_tipo_pagamento).permit(:descricao)
    end
end
