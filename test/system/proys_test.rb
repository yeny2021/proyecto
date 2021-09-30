require "application_system_test_case"

class ProysTest < ApplicationSystemTestCase
  setup do
    @proy = proys(:one)
  end

  test "visiting the index" do
    visit proys_url
    assert_selector "h1", text: "Proys"
  end

  test "creating a Proy" do
    visit proys_url
    click_on "New Proy"

    fill_in "Imagen", with: @proy.imagen
    fill_in "Nombre", with: @proy.nombre
    click_on "Create Proy"

    assert_text "Proy was successfully created"
    click_on "Back"
  end

  test "updating a Proy" do
    visit proys_url
    click_on "Edit", match: :first

    fill_in "Imagen", with: @proy.imagen
    fill_in "Nombre", with: @proy.nombre
    click_on "Update Proy"

    assert_text "Proy was successfully updated"
    click_on "Back"
  end

  test "destroying a Proy" do
    visit proys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proy was successfully destroyed"
  end
end
