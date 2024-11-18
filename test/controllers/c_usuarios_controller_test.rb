require "test_helper"

class CUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_usuario = c_usuarios(:one)
  end

  test "should get index" do
    get c_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_c_usuario_url
    assert_response :success
  end

  test "should create c_usuario" do
    assert_difference("CUsuario.count") do
      post c_usuarios_url, params: { c_usuario: { cpf: @c_usuario.cpf, g_endereco_id: @c_usuario.g_endereco_id, nome: @c_usuario.nome, telefone: @c_usuario.telefone } }
    end

    assert_redirected_to c_usuario_url(CUsuario.last)
  end

  test "should show c_usuario" do
    get c_usuario_url(@c_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_usuario_url(@c_usuario)
    assert_response :success
  end

  test "should update c_usuario" do
    patch c_usuario_url(@c_usuario), params: { c_usuario: { cpf: @c_usuario.cpf, g_endereco_id: @c_usuario.g_endereco_id, nome: @c_usuario.nome, telefone: @c_usuario.telefone } }
    assert_redirected_to c_usuario_url(@c_usuario)
  end

  test "should destroy c_usuario" do
    assert_difference("CUsuario.count", -1) do
      delete c_usuario_url(@c_usuario)
    end

    assert_redirected_to c_usuarios_url
  end
end
