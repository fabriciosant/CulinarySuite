class CProdutosController < ApplicationController
  before_action :set_c_produto, only: %i[ show edit update destroy ]

  # GET /c_produtos or /c_produtos.json
  def index
    @c_produtos = CProduto.all
  end

  # GET /c_produtos/1 or /c_produtos/1.json
  def show
  end

  # GET /c_produtos/new
  def new
    @c_produto = CProduto.new
  end

  # GET /c_produtos/1/edit
  def edit
  end

  # POST /c_produtos or /c_produtos.json
  def create
    @c_produto = CProduto.new(c_produto_params)

    respond_to do |format|
      if @c_produto.save
        format.html { redirect_to @c_produto, notice: "C produto was successfully created." }
        format.json { render :show, status: :created, location: @c_produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_produtos/1 or /c_produtos/1.json
  def update
    respond_to do |format|
      if @c_produto.update(c_produto_params)
        format.html { redirect_to @c_produto, notice: "C produto was successfully updated." }
        format.json { render :show, status: :ok, location: @c_produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_produtos/1 or /c_produtos/1.json
  def destroy
    @c_produto.destroy!

    respond_to do |format|
      format.html { redirect_to c_produtos_path, status: :see_other, notice: "C produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_produto
      @c_produto = CProduto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def c_produto_params
      params.expect(c_produto: [ :nome, :descricao, :preco, :status ])
    end
end
