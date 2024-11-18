require "application_system_test_case"

class CProdutoPromocaosTest < ApplicationSystemTestCase
  setup do
    @c_produto_promocao = c_produtos_promocoes(:one)
  end

  test "visiting the index" do
    visit c_produtos_promocoes_url
    assert_selector "h1", text: "C produto promocaos"
  end

  test "should create c produto promocao" do
    visit c_produtos_promocoes_url
    click_on "New c produto promocao"

    fill_in "C produto", with: @c_produto_promocao.c_produto_id
    fill_in "Data promocao", with: @c_produto_promocao.data_promocao
    fill_in "Descricao", with: @c_produto_promocao.descricao
    fill_in "Nome", with: @c_produto_promocao.nome
    fill_in "Preco", with: @c_produto_promocao.preco
    check "Status" if @c_produto_promocao.status
    click_on "Create C produto promocao"

    assert_text "C produto promocao was successfully created"
    click_on "Back"
  end

  test "should update C produto promocao" do
    visit c_produto_promocao_url(@c_produto_promocao)
    click_on "Edit this c produto promocao", match: :first

    fill_in "C produto", with: @c_produto_promocao.c_produto_id
    fill_in "Data promocao", with: @c_produto_promocao.data_promocao.to_s
    fill_in "Descricao", with: @c_produto_promocao.descricao
    fill_in "Nome", with: @c_produto_promocao.nome
    fill_in "Preco", with: @c_produto_promocao.preco
    check "Status" if @c_produto_promocao.status
    click_on "Update C produto promocao"

    assert_text "C produto promocao was successfully updated"
    click_on "Back"
  end

  test "should destroy C produto promocao" do
    visit c_produto_promocao_url(@c_produto_promocao)
    click_on "Destroy this c produto promocao", match: :first

    assert_text "C produto promocao was successfully destroyed"
  end
end
