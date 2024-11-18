require "application_system_test_case"

class CUsuariosTest < ApplicationSystemTestCase
  setup do
    @c_usuario = c_usuarios(:one)
  end

  test "visiting the index" do
    visit c_usuarios_url
    assert_selector "h1", text: "C usuarios"
  end

  test "should create c usuario" do
    visit c_usuarios_url
    click_on "New c usuario"

    fill_in "Cpf", with: @c_usuario.cpf
    fill_in "G endereco", with: @c_usuario.g_endereco_id
    fill_in "Nome", with: @c_usuario.nome
    fill_in "Telefone", with: @c_usuario.telefone
    click_on "Create C usuario"

    assert_text "C usuario was successfully created"
    click_on "Back"
  end

  test "should update C usuario" do
    visit c_usuario_url(@c_usuario)
    click_on "Edit this c usuario", match: :first

    fill_in "Cpf", with: @c_usuario.cpf
    fill_in "G endereco", with: @c_usuario.g_endereco_id
    fill_in "Nome", with: @c_usuario.nome
    fill_in "Telefone", with: @c_usuario.telefone
    click_on "Update C usuario"

    assert_text "C usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy C usuario" do
    visit c_usuario_url(@c_usuario)
    click_on "Destroy this c usuario", match: :first

    assert_text "C usuario was successfully destroyed"
  end
end
