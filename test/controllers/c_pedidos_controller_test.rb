require "test_helper"

class CPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_pedido = c_pedidos(:one)
  end

  test "should get index" do
    get c_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_pedido_url
    assert_response :success
  end

  test "should create c_pedido" do
    assert_difference("CPedido.count") do
      post c_pedidos_url, params: { c_pedido: { c_pagamentos_id: @c_pedido.c_pagamentos_id, c_produtos_id: @c_pedido.c_produtos_id, c_usuarios_id: @c_pedido.c_usuarios_id, data_pedido: @c_pedido.data_pedido, entrega: @c_pedido.entrega } }
    end

    assert_redirected_to c_pedido_url(CPedido.last)
  end

  test "should show c_pedido" do
    get c_pedido_url(@c_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_pedido_url(@c_pedido)
    assert_response :success
  end

  test "should update c_pedido" do
    patch c_pedido_url(@c_pedido), params: { c_pedido: { c_pagamentos_id: @c_pedido.c_pagamentos_id, c_produtos_id: @c_pedido.c_produtos_id, c_usuarios_id: @c_pedido.c_usuarios_id, data_pedido: @c_pedido.data_pedido, entrega: @c_pedido.entrega } }
    assert_redirected_to c_pedido_url(@c_pedido)
  end

  test "should destroy c_pedido" do
    assert_difference("CPedido.count", -1) do
      delete c_pedido_url(@c_pedido)
    end

    assert_redirected_to c_pedidos_url
  end
end
