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

    respond_to do |format|
      if @c_tipo_pagamento.save
        format.html { redirect_to @c_tipo_pagamento, notice: "C tipo pagamento was successfully created." }
        format.json { render :show, status: :created, location: @c_tipo_pagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_tipo_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_tipos_pagamentos/1 or /c_tipos_pagamentos/1.json
  def update
    respond_to do |format|
      if @c_tipo_pagamento.update(c_tipo_pagamento_params)
        format.html { redirect_to @c_tipo_pagamento, notice: "C tipo pagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @c_tipo_pagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_tipo_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_tipos_pagamentos/1 or /c_tipos_pagamentos/1.json
  def destroy
    @c_tipo_pagamento.destroy!

    respond_to do |format|
      format.html { redirect_to c_tipos_pagamentos_path, status: :see_other, notice: "C tipo pagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_tipo_pagamento
      @c_tipo_pagamento = CTipoPagamento.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_tipo_pagamento_params
      params.expect(c_tipo_pagamento: [ :descricao ])
    end
end
