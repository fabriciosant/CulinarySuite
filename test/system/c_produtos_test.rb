require "application_system_test_case"

class CProdutosTest < ApplicationSystemTestCase
  setup do
    @c_produto = c_produtos(:one)
  end

  test "visiting the index" do
    visit c_produtos_url
    assert_selector "h1", text: "C produtos"
  end

  test "should create c produto" do
    visit c_produtos_url
    click_on "New c produto"

    fill_in "Descricao", with: @c_produto.descricao
    fill_in "Nome", with: @c_produto.nome
    fill_in "Preco", with: @c_produto.preco
    check "Status" if @c_produto.status
    click_on "Create C produto"

    assert_text "C produto was successfully created"
    click_on "Back"
  end

  test "should update C produto" do
    visit c_produto_url(@c_produto)
    click_on "Edit this c produto", match: :first

    fill_in "Descricao", with: @c_produto.descricao
    fill_in "Nome", with: @c_produto.nome
    fill_in "Preco", with: @c_produto.preco
    check "Status" if @c_produto.status
    click_on "Update C produto"

    assert_text "C produto was successfully updated"
    click_on "Back"
  end

  test "should destroy C produto" do
    visit c_produto_url(@c_produto)
    click_on "Destroy this c produto", match: :first

    assert_text "C produto was successfully destroyed"
  end
end
