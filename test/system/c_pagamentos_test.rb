require "application_system_test_case"

class CPagamentosTest < ApplicationSystemTestCase
  setup do
    @c_pagamento = c_pagamentos(:one)
  end

  test "visiting the index" do
    visit c_pagamentos_url
    assert_selector "h1", text: "C pagamentos"
  end

  test "should create c pagamento" do
    visit c_pagamentos_url
    click_on "New c pagamento"

    fill_in "C tipo pagamento", with: @c_pagamento.c_tipo_pagamento_id
    check "Pagamento entrega" if @c_pagamento.pagamento_entrega
    click_on "Create C pagamento"

    assert_text "C pagamento was successfully created"
    click_on "Back"
  end

  test "should update C pagamento" do
    visit c_pagamento_url(@c_pagamento)
    click_on "Edit this c pagamento", match: :first

    fill_in "C tipo pagamento", with: @c_pagamento.c_tipo_pagamento_id
    check "Pagamento entrega" if @c_pagamento.pagamento_entrega
    click_on "Update C pagamento"

    assert_text "C pagamento was successfully updated"
    click_on "Back"
  end

  test "should destroy C pagamento" do
    visit c_pagamento_url(@c_pagamento)
    click_on "Destroy this c pagamento", match: :first

    assert_text "C pagamento was successfully destroyed"
  end
end
