class CStatusPedidosController < ApplicationController
  before_action :set_c_statu_pedido, only: %i[ show edit update destroy ]

  # GET /c_status_pedidos or /c_status_pedidos.json
  def index
    @c_status_pedidos = CStatuPedido.all
  end

  # GET /c_status_pedidos/1 or /c_status_pedidos/1.json
  def show
  end

  # GET /c_status_pedidos/new
  def new
    @c_statu_pedido = CStatuPedido.new
  end

  # GET /c_status_pedidos/1/edit
  def edit
  end

  # POST /c_status_pedidos or /c_status_pedidos.json
  def create
    @c_statu_pedido = CStatuPedido.new(c_statu_pedido_params)

    respond_to do |format|
      if @c_statu_pedido.save
        format.html { redirect_to @c_statu_pedido, notice: "C statu pedido was successfully created." }
        format.json { render :show, status: :created, location: @c_statu_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_statu_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_status_pedidos/1 or /c_status_pedidos/1.json
  def update
    respond_to do |format|
      if @c_statu_pedido.update(c_statu_pedido_params)
        format.html { redirect_to @c_statu_pedido, notice: "C statu pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @c_statu_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_statu_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_status_pedidos/1 or /c_status_pedidos/1.json
  def destroy
    @c_statu_pedido.destroy!

    respond_to do |format|
      format.html { redirect_to c_status_pedidos_path, status: :see_other, notice: "C statu pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_statu_pedido
      @c_statu_pedido = CStatuPedido.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_statu_pedido_params
      params.expect(c_statu_pedido: [ :tipo ])
    end
end
