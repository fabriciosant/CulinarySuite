class PainelAdmsController < ApplicationController
  before_action :set_painel_adm, only: %i[ show edit update destroy ]

  # GET /painel_adms or /painel_adms.json
  def index
    @painel_adms = PainelAdm.all
  end

  # GET /painel_adms/1 or /painel_adms/1.json
  def show
  end

  # GET /painel_adms/new
  def new
    @painel_adm = PainelAdm.new
  end

  # GET /painel_adms/1/edit
  def edit
  end

  # POST /painel_adms or /painel_adms.json
  def create
    @painel_adm = PainelAdm.new(painel_adm_params)

    respond_to do |format|
      if @painel_adm.save
        format.html { redirect_to @painel_adm, notice: "Painel adm was successfully created." }
        format.json { render :show, status: :created, location: @painel_adm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @painel_adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /painel_adms/1 or /painel_adms/1.json
  def update
    respond_to do |format|
      if @painel_adm.update(painel_adm_params)
        format.html { redirect_to @painel_adm, notice: "Painel adm was successfully updated." }
        format.json { render :show, status: :ok, location: @painel_adm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @painel_adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painel_adms/1 or /painel_adms/1.json
  def destroy
    @painel_adm.destroy!

    respond_to do |format|
      format.html { redirect_to painel_adms_path, status: :see_other, notice: "Painel adm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painel_adm
      @painel_adm = PainelAdm.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def painel_adm_params
      params.fetch(:painel_adm, {})
    end
end
