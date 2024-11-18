class GEnderecosController < ApplicationController
  before_action :set_g_endereco, only: %i[ show edit update destroy ]

  # GET /g_enderecos or /g_enderecos.json
  def index
    @g_enderecos = GEndereco.all
  end

  # GET /g_enderecos/1 or /g_enderecos/1.json
  def show
  end

  # GET /g_enderecos/new
  def new
    @g_endereco = GEndereco.new
  end

  # GET /g_enderecos/1/edit
  def edit
  end

  # POST /g_enderecos or /g_enderecos.json
  def create
    @g_endereco = GEndereco.new(g_endereco_params)

    respond_to do |format|
      if @g_endereco.save
        format.html { redirect_to @g_endereco, notice: "G endereco was successfully created." }
        format.json { render :show, status: :created, location: @g_endereco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @g_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_enderecos/1 or /g_enderecos/1.json
  def update
    respond_to do |format|
      if @g_endereco.update(g_endereco_params)
        format.html { redirect_to @g_endereco, notice: "G endereco was successfully updated." }
        format.json { render :show, status: :ok, location: @g_endereco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @g_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_enderecos/1 or /g_enderecos/1.json
  def destroy
    @g_endereco.destroy!

    respond_to do |format|
      format.html { redirect_to g_enderecos_path, status: :see_other, notice: "G endereco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_endereco
      @g_endereco = GEndereco.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def g_endereco_params
      params.expect(g_endereco: [ :cep, :logadouro, :numero, :bairro, :complemento, :g_estado_id ])
    end
end
