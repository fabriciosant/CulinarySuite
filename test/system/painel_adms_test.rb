require "application_system_test_case"

class PainelAdmsTest < ApplicationSystemTestCase
  setup do
    @painel_adm = painel_adms(:one)
  end

  test "visiting the index" do
    visit painel_adms_url
    assert_selector "h1", text: "Painel adms"
  end

  test "should create painel adm" do
    visit painel_adms_url
    click_on "New painel adm"

    click_on "Create Painel adm"

    assert_text "Painel adm was successfully created"
    click_on "Back"
  end

  test "should update Painel adm" do
    visit painel_adm_url(@painel_adm)
    click_on "Edit this painel adm", match: :first

    click_on "Update Painel adm"

    assert_text "Painel adm was successfully updated"
    click_on "Back"
  end

  test "should destroy Painel adm" do
    visit painel_adm_url(@painel_adm)
    click_on "Destroy this painel adm", match: :first

    assert_text "Painel adm was successfully destroyed"
  end
end
