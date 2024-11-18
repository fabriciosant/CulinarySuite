require "test_helper"

class CProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_produto = c_produtos(:one)
  end

  test "should get index" do
    get c_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_produto_url
    assert_response :success
  end

  test "should create c_produto" do
    assert_difference("CProduto.count") do
      post c_produtos_url, params: { c_produto: { descricao: @c_produto.descricao, nome: @c_produto.nome, preco: @c_produto.preco, status: @c_produto.status } }
    end

    assert_redirected_to c_produto_url(CProduto.last)
  end

  test "should show c_produto" do
    get c_produto_url(@c_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_produto_url(@c_produto)
    assert_response :success
  end

  test "should update c_produto" do
    patch c_produto_url(@c_produto), params: { c_produto: { descricao: @c_produto.descricao, nome: @c_produto.nome, preco: @c_produto.preco, status: @c_produto.status } }
    assert_redirected_to c_produto_url(@c_produto)
  end

  test "should destroy c_produto" do
    assert_difference("CProduto.count", -1) do
      delete c_produto_url(@c_produto)
    end

    assert_redirected_to c_produtos_url
  end
end
