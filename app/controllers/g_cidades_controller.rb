class GCidadesController < ApplicationController
  before_action :set_g_cidade, only: %i[ show edit update destroy ]

  # GET /g_cidades or /g_cidades.json
  def index
    @g_cidades = GCidade.all
  end

  # GET /g_cidades/1 or /g_cidades/1.json
  def show
  end

  # GET /g_cidades/new
  def new
    @g_cidade = GCidade.new
  end

  # GET /g_cidades/1/edit
  def edit
  end

  # POST /g_cidades or /g_cidades.json
  def create
    @g_cidade = GCidade.new(g_cidade_params)

    respond_to do |format|
      if @g_cidade.save
        format.html { redirect_to @g_cidade, notice: "G cidade was successfully created." }
        format.json { render :show, status: :created, location: @g_cidade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @g_cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_cidades/1 or /g_cidades/1.json
  def update
    respond_to do |format|
      if @g_cidade.update(g_cidade_params)
        format.html { redirect_to @g_cidade, notice: "G cidade was successfully updated." }
        format.json { render :show, status: :ok, location: @g_cidade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @g_cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_cidades/1 or /g_cidades/1.json
  def destroy
    @g_cidade.destroy!

    respond_to do |format|
      format.html { redirect_to g_cidades_path, status: :see_other, notice: "G cidade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_cidade
      @g_cidade = GCidade.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def g_cidade_params
      params.expect(g_cidade: [ :nome, :g_estado_id ])
    end
end
