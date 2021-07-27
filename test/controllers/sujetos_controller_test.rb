require "test_helper"

class SujetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sujeto = sujetos(:one)
  end

  test "should get index" do
    get sujetos_url
    assert_response :success
  end

  test "should get new" do
    get new_sujeto_url
    assert_response :success
  end

  test "should create sujeto" do
    assert_difference('Sujeto.count') do
      post sujetos_url, params: { sujeto: { birthday: @sujeto.birthday, document_number: @sujeto.document_number, first_name: @sujeto.first_name, last_name: @sujeto.last_name } }
    end

    assert_redirected_to sujeto_url(Sujeto.last)
  end

  test "should show sujeto" do
    get sujeto_url(@sujeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_sujeto_url(@sujeto)
    assert_response :success
  end

  test "should update sujeto" do
    patch sujeto_url(@sujeto), params: { sujeto: { birthday: @sujeto.birthday, document_number: @sujeto.document_number, first_name: @sujeto.first_name, last_name: @sujeto.last_name } }
    assert_redirected_to sujeto_url(@sujeto)
  end

  test "should destroy sujeto" do
    assert_difference('Sujeto.count', -1) do
      delete sujeto_url(@sujeto)
    end

    assert_redirected_to sujetos_url
  end
end
