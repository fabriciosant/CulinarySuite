require "test_helper"

class PainelAdmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @painel_adm = painel_adms(:one)
  end

  test "should get index" do
    get painel_adms_url
    assert_response :success
  end

  test "should get new" do
    get new_painel_adm_url
    assert_response :success
  end

  test "should create painel_adm" do
    assert_difference("PainelAdm.count") do
      post painel_adms_url, params: { painel_adm: {} }
    end

    assert_redirected_to painel_adm_url(PainelAdm.last)
  end

  test "should show painel_adm" do
    get painel_adm_url(@painel_adm)
    assert_response :success
  end

  test "should get edit" do
    get edit_painel_adm_url(@painel_adm)
    assert_response :success
  end

  test "should update painel_adm" do
    patch painel_adm_url(@painel_adm), params: { painel_adm: {} }
    assert_redirected_to painel_adm_url(@painel_adm)
  end

  test "should destroy painel_adm" do
    assert_difference("PainelAdm.count", -1) do
      delete painel_adm_url(@painel_adm)
    end

    assert_redirected_to painel_adms_url
  end
end
