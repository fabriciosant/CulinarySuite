require "test_helper"

class CTiposPagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_tipo_pagamento = c_tipos_pagamentos(:one)
  end

  test "should get index" do
    get c_tipos_pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_tipo_pagamento_url
    assert_response :success
  end

  test "should create c_tipo_pagamento" do
    assert_difference("CTipoPagamento.count") do
      post c_tipos_pagamentos_url, params: { c_tipo_pagamento: { descricao: @c_tipo_pagamento.descricao } }
    end

    assert_redirected_to c_tipo_pagamento_url(CTipoPagamento.last)
  end

  test "should show c_tipo_pagamento" do
    get c_tipo_pagamento_url(@c_tipo_pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_tipo_pagamento_url(@c_tipo_pagamento)
    assert_response :success
  end

  test "should update c_tipo_pagamento" do
    patch c_tipo_pagamento_url(@c_tipo_pagamento), params: { c_tipo_pagamento: { descricao: @c_tipo_pagamento.descricao } }
    assert_redirected_to c_tipo_pagamento_url(@c_tipo_pagamento)
  end

  test "should destroy c_tipo_pagamento" do
    assert_difference("CTipoPagamento.count", -1) do
      delete c_tipo_pagamento_url(@c_tipo_pagamento)
    end

    assert_redirected_to c_tipos_pagamentos_url
  end
end
