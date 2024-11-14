class CPagamentosController < ApplicationController
  before_action :set_c_pagamento, only: %i[ show edit update destroy ]

  # GET /c_pagamentos or /c_pagamentos.json
  def index
    @c_pagamentos = CPagamento.all
  end

  # GET /c_pagamentos/1 or /c_pagamentos/1.json
  def show
  end

  # GET /c_pagamentos/new
  def new
    @c_pagamento = CPagamento.new
  end

  # GET /c_pagamentos/1/edit
  def edit
  end

  # POST /c_pagamentos or /c_pagamentos.json
  def create
    @c_pagamento = CPagamento.new(c_pagamento_params)

    respond_to do |format|
      if @c_pagamento.save
        format.html { redirect_to @c_pagamento, notice: "C pagamento was successfully created." }
        format.json { render :show, status: :created, location: @c_pagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_pagamentos/1 or /c_pagamentos/1.json
  def update
    respond_to do |format|
      if @c_pagamento.update(c_pagamento_params)
        format.html { redirect_to @c_pagamento, notice: "C pagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @c_pagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_pagamentos/1 or /c_pagamentos/1.json
  def destroy
    @c_pagamento.destroy!

    respond_to do |format|
      format.html { redirect_to c_pagamentos_path, status: :see_other, notice: "C pagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_pagamento
      @c_pagamento = CPagamento.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_pagamento_params
      params.expect(c_pagamento: [ :pagamento_entrega, :c_tipo_pagamento_id ])
    end
end
