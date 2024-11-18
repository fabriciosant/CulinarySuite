require "test_helper"

class CProdutosPromocoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_produto_promocao = c_produtos_promocoes(:one)
  end

  test "should get index" do
    get c_produtos_promocoes_url
    assert_response :success
  end

  test "should get new" do
    get new_c_produto_promocao_url
    assert_response :success
  end

  test "should create c_produto_promocao" do
    assert_difference("CProdutoPromocao.count") do
      post c_produtos_promocoes_url, params: { c_produto_promocao: { c_produto_id: @c_produto_promocao.c_produto_id, data_promocao: @c_produto_promocao.data_promocao, descricao: @c_produto_promocao.descricao, nome: @c_produto_promocao.nome, preco: @c_produto_promocao.preco, status: @c_produto_promocao.status } }
    end

    assert_redirected_to c_produto_promocao_url(CProdutoPromocao.last)
  end

  test "should show c_produto_promocao" do
    get c_produto_promocao_url(@c_produto_promocao)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_produto_promocao_url(@c_produto_promocao)
    assert_response :success
  end

  test "should update c_produto_promocao" do
    patch c_produto_promocao_url(@c_produto_promocao), params: { c_produto_promocao: { c_produto_id: @c_produto_promocao.c_produto_id, data_promocao: @c_produto_promocao.data_promocao, descricao: @c_produto_promocao.descricao, nome: @c_produto_promocao.nome, preco: @c_produto_promocao.preco, status: @c_produto_promocao.status } }
    assert_redirected_to c_produto_promocao_url(@c_produto_promocao)
  end

  test "should destroy c_produto_promocao" do
    assert_difference("CProdutoPromocao.count", -1) do
      delete c_produto_promocao_url(@c_produto_promocao)
    end

    assert_redirected_to c_produtos_promocoes_url
  end
end
