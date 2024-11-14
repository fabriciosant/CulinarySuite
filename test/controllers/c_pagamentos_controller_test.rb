require "test_helper"

class CPagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_pagamento = c_pagamentos(:one)
  end

  test "should get index" do
    get c_pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_pagamento_url
    assert_response :success
  end

  test "should create c_pagamento" do
    assert_difference("CPagamento.count") do
      post c_pagamentos_url, params: { c_pagamento: { c_tipo_pagamento_id: @c_pagamento.c_tipo_pagamento_id, pagamento_entrega: @c_pagamento.pagamento_entrega } }
    end

    assert_redirected_to c_pagamento_url(CPagamento.last)
  end

  test "should show c_pagamento" do
    get c_pagamento_url(@c_pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_pagamento_url(@c_pagamento)
    assert_response :success
  end

  test "should update c_pagamento" do
    patch c_pagamento_url(@c_pagamento), params: { c_pagamento: { c_tipo_pagamento_id: @c_pagamento.c_tipo_pagamento_id, pagamento_entrega: @c_pagamento.pagamento_entrega } }
    assert_redirected_to c_pagamento_url(@c_pagamento)
  end

  test "should destroy c_pagamento" do
    assert_difference("CPagamento.count", -1) do
      delete c_pagamento_url(@c_pagamento)
    end

    assert_redirected_to c_pagamentos_url
  end
end
