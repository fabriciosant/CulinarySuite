class CProdutosPromocoesController < ApplicationController
  before_action :set_c_produto_promocao, only: %i[ show edit update destroy ]

  # GET /c_produtos_promocoes or /c_produtos_promocoes.json
  def index
    @c_produtos_promocoes = CProdutoPromocao.all
  end

  # GET /c_produtos_promocoes/1 or /c_produtos_promocoes/1.json
  def show
  end

  # GET /c_produtos_promocoes/new
  def new
    @c_produto_promocao = CProdutoPromocao.new
  end

  # GET /c_produtos_promocoes/1/edit
  def edit
  end

  # POST /c_produtos_promocoes or /c_produtos_promocoes.json
  def create
    @c_produto_promocao = CProdutoPromocao.new(c_produto_promocao_params)

    respond_to do |format|
      if @c_produto_promocao.save
        format.html { redirect_to @c_produto_promocao, notice: "C produto promocao was successfully created." }
        format.json { render :show, status: :created, location: @c_produto_promocao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_produto_promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_produtos_promocoes/1 or /c_produtos_promocoes/1.json
  def update
    respond_to do |format|
      if @c_produto_promocao.update(c_produto_promocao_params)
        format.html { redirect_to @c_produto_promocao, notice: "C produto promocao was successfully updated." }
        format.json { render :show, status: :ok, location: @c_produto_promocao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_produto_promocao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_produtos_promocoes/1 or /c_produtos_promocoes/1.json
  def destroy
    @c_produto_promocao.destroy!

    respond_to do |format|
      format.html { redirect_to c_produtos_promocoes_path, status: :see_other, notice: "C produto promocao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_produto_promocao
      @c_produto_promocao = CProdutoPromocao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_produto_promocao_params
      params.expect(c_produto_promocao: [ :nome, :descricao, :preco, :status, :data_promocao, :c_produto_id ])
    end
end
