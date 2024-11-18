require "application_system_test_case"

class CStatuPedidosTest < ApplicationSystemTestCase
  setup do
    @c_statu_pedido = c_status_pedidos(:one)
  end

  test "visiting the index" do
    visit c_status_pedidos_url
    assert_selector "h1", text: "C statu pedidos"
  end

  test "should create c statu pedido" do
    visit c_status_pedidos_url
    click_on "New c statu pedido"

    fill_in "Tipo", with: @c_statu_pedido.tipo
    click_on "Create C statu pedido"

    assert_text "C statu pedido was successfully created"
    click_on "Back"
  end

  test "should update C statu pedido" do
    visit c_statu_pedido_url(@c_statu_pedido)
    click_on "Edit this c statu pedido", match: :first

    fill_in "Tipo", with: @c_statu_pedido.tipo
    click_on "Update C statu pedido"

    assert_text "C statu pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy C statu pedido" do
    visit c_statu_pedido_url(@c_statu_pedido)
    click_on "Destroy this c statu pedido", match: :first

    assert_text "C statu pedido was successfully destroyed"
  end
end
