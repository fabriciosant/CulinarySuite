require "application_system_test_case"

class CPedidosTest < ApplicationSystemTestCase
  setup do
    @c_pedido = c_pedidos(:one)
  end

  test "visiting the index" do
    visit c_pedidos_url
    assert_selector "h1", text: "C pedidos"
  end

  test "should create c pedido" do
    visit c_pedidos_url
    click_on "New c pedido"

    fill_in "C pagamentos", with: @c_pedido.c_pagamentos_id
    fill_in "C produtos", with: @c_pedido.c_produtos_id
    fill_in "C usuarios", with: @c_pedido.c_usuarios_id
    fill_in "Data pedido", with: @c_pedido.data_pedido
    check "Entrega" if @c_pedido.entrega
    click_on "Create C pedido"

    assert_text "C pedido was successfully created"
    click_on "Back"
  end

  test "should update C pedido" do
    visit c_pedido_url(@c_pedido)
    click_on "Edit this c pedido", match: :first

    fill_in "C pagamentos", with: @c_pedido.c_pagamentos_id
    fill_in "C produtos", with: @c_pedido.c_produtos_id
    fill_in "C usuarios", with: @c_pedido.c_usuarios_id
    fill_in "Data pedido", with: @c_pedido.data_pedido.to_s
    check "Entrega" if @c_pedido.entrega
    click_on "Update C pedido"

    assert_text "C pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy C pedido" do
    visit c_pedido_url(@c_pedido)
    click_on "Destroy this c pedido", match: :first

    assert_text "C pedido was successfully destroyed"
  end
end
