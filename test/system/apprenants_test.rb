require "application_system_test_case"

class ApprenantsTest < ApplicationSystemTestCase
  setup do
    @apprenant = apprenants(:one)
  end

  test "visiting the index" do
    visit apprenants_url
    assert_selector "h1", text: "Apprenants"
  end

  test "creating a Apprenant" do
    visit apprenants_url
    click_on "New Apprenant"

    fill_in "Attentes", with: @apprenant.attentes
    fill_in "Description", with: @apprenant.description
    fill_in "Formation", with: @apprenant.formation
    fill_in "Mail", with: @apprenant.mail
    fill_in "Nom", with: @apprenant.nom
    fill_in "Projet", with: @apprenant.projet
    fill_in "Telephone", with: @apprenant.telephone
    click_on "Create Apprenant"

    assert_text "Apprenant was successfully created"
    click_on "Back"
  end

  test "updating a Apprenant" do
    visit apprenants_url
    click_on "Edit", match: :first

    fill_in "Attentes", with: @apprenant.attentes
    fill_in "Description", with: @apprenant.description
    fill_in "Formation", with: @apprenant.formation
    fill_in "Mail", with: @apprenant.mail
    fill_in "Nom", with: @apprenant.nom
    fill_in "Projet", with: @apprenant.projet
    fill_in "Telephone", with: @apprenant.telephone
    click_on "Update Apprenant"

    assert_text "Apprenant was successfully updated"
    click_on "Back"
  end

  test "destroying a Apprenant" do
    visit apprenants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apprenant was successfully destroyed"
  end
end
