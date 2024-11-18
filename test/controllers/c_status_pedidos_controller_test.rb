require "test_helper"

class CStatusPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_statu_pedido = c_status_pedidos(:one)
  end

  test "should get index" do
    get c_status_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_statu_pedido_url
    assert_response :success
  end

  test "should create c_statu_pedido" do
    assert_difference("CStatuPedido.count") do
      post c_status_pedidos_url, params: { c_statu_pedido: { tipo: @c_statu_pedido.tipo } }
    end

    assert_redirected_to c_statu_pedido_url(CStatuPedido.last)
  end

  test "should show c_statu_pedido" do
    get c_statu_pedido_url(@c_statu_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_statu_pedido_url(@c_statu_pedido)
    assert_response :success
  end

  test "should update c_statu_pedido" do
    patch c_statu_pedido_url(@c_statu_pedido), params: { c_statu_pedido: { tipo: @c_statu_pedido.tipo } }
    assert_redirected_to c_statu_pedido_url(@c_statu_pedido)
  end

  test "should destroy c_statu_pedido" do
    assert_difference("CStatuPedido.count", -1) do
      delete c_statu_pedido_url(@c_statu_pedido)
    end

    assert_redirected_to c_status_pedidos_url
  end
end
