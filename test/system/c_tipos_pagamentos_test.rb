require "application_system_test_case"

class CTipoPagamentosTest < ApplicationSystemTestCase
  setup do
    @c_tipo_pagamento = c_tipos_pagamentos(:one)
  end

  test "visiting the index" do
    visit c_tipos_pagamentos_url
    assert_selector "h1", text: "C tipo pagamentos"
  end

  test "should create c tipo pagamento" do
    visit c_tipos_pagamentos_url
    click_on "New c tipo pagamento"

    fill_in "Descricao", with: @c_tipo_pagamento.descricao
    click_on "Create C tipo pagamento"

    assert_text "C tipo pagamento was successfully created"
    click_on "Back"
  end

  test "should update C tipo pagamento" do
    visit c_tipo_pagamento_url(@c_tipo_pagamento)
    click_on "Edit this c tipo pagamento", match: :first

    fill_in "Descricao", with: @c_tipo_pagamento.descricao
    click_on "Update C tipo pagamento"

    assert_text "C tipo pagamento was successfully updated"
    click_on "Back"
  end

  test "should destroy C tipo pagamento" do
    visit c_tipo_pagamento_url(@c_tipo_pagamento)
    click_on "Destroy this c tipo pagamento", match: :first

    assert_text "C tipo pagamento was successfully destroyed"
  end
end
