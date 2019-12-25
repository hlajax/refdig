require 'test_helper'

class ApprenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apprenant = apprenants(:one)
  end

  test "should get index" do
    get apprenants_url
    assert_response :success
  end

  test "should get new" do
    get new_apprenant_url
    assert_response :success
  end

  test "should create apprenant" do
    assert_difference('Apprenant.count') do
      post apprenants_url, params: { apprenant: { attentes: @apprenant.attentes, description: @apprenant.description, formation: @apprenant.formation, mail: @apprenant.mail, nom: @apprenant.nom, projet: @apprenant.projet, telephone: @apprenant.telephone } }
    end

    assert_redirected_to apprenant_url(Apprenant.last)
  end

  test "should show apprenant" do
    get apprenant_url(@apprenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_apprenant_url(@apprenant)
    assert_response :success
  end

  test "should update apprenant" do
    patch apprenant_url(@apprenant), params: { apprenant: { attentes: @apprenant.attentes, description: @apprenant.description, formation: @apprenant.formation, mail: @apprenant.mail, nom: @apprenant.nom, projet: @apprenant.projet, telephone: @apprenant.telephone } }
    assert_redirected_to apprenant_url(@apprenant)
  end

  test "should destroy apprenant" do
    assert_difference('Apprenant.count', -1) do
      delete apprenant_url(@apprenant)
    end

    assert_redirected_to apprenants_url
  end
end
