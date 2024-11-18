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

    respond_to do |format|
      if @g_estado.save
        format.html { redirect_to @g_estado, notice: "G estado was successfully created." }
        format.json { render :show, status: :created, location: @g_estado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @g_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_estados/1 or /g_estados/1.json
  def update
    respond_to do |format|
      if @g_estado.update(g_estado_params)
        format.html { redirect_to @g_estado, notice: "G estado was successfully updated." }
        format.json { render :show, status: :ok, location: @g_estado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @g_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_estados/1 or /g_estados/1.json
  def destroy
    @g_estado.destroy!

    respond_to do |format|
      format.html { redirect_to g_estados_path, status: :see_other, notice: "G estado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_estado
      @g_estado = GEstado.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def g_estado_params
      params.expect(g_estado: [ :nome, :g_cidade_id ])
    end
end
