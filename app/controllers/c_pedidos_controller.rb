class CPedidosController < ApplicationController
  before_action :set_c_pedido, only: %i[ show edit update destroy ]

  # GET /c_pedidos or /c_pedidos.json
  def index
    @c_pedidos = CPedido.all
  end

  # GET /c_pedidos/1 or /c_pedidos/1.json
  def show
  end

  # GET /c_pedidos/new
  def new
    @c_pedido = CPedido.new
  end

  # GET /c_pedidos/1/edit
  def edit
  end

  # POST /c_pedidos or /c_pedidos.json
  def create
    @c_pedido = CPedido.new(c_pedido_params)

    respond_to do |format|
      if @c_pedido.save
        format.html { redirect_to @c_pedido, notice: "C pedido was successfully created." }
        format.json { render :show, status: :created, location: @c_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_pedidos/1 or /c_pedidos/1.json
  def update
    respond_to do |format|
      if @c_pedido.update(c_pedido_params)
        format.html { redirect_to @c_pedido, notice: "C pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @c_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_pedidos/1 or /c_pedidos/1.json
  def destroy
    @c_pedido.destroy!

    respond_to do |format|
      format.html { redirect_to c_pedidos_path, status: :see_other, notice: "C pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_pedido
      @c_pedido = CPedido.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_pedido_params
      params.expect(c_pedido: [ :data_pedido, :entrega, :c_usuarios_id, :c_produtos_id, :c_pagamentos_id ])
    end
end
