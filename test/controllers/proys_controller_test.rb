require "test_helper"

class ProysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proy = proys(:one)
  end

  test "should get index" do
    get proys_url
    assert_response :success
  end

  test "should get new" do
    get new_proy_url
    assert_response :success
  end

  test "should create proy" do
    assert_difference('Proy.count') do
      post proys_url, params: { proy: { imagen: @proy.imagen, nombre: @proy.nombre } }
    end

    assert_redirected_to proy_url(Proy.last)
  end

  test "should show proy" do
    get proy_url(@proy)
    assert_response :success
  end

  test "should get edit" do
    get edit_proy_url(@proy)
    assert_response :success
  end

  test "should update proy" do
    patch proy_url(@proy), params: { proy: { imagen: @proy.imagen, nombre: @proy.nombre } }
    assert_redirected_to proy_url(@proy)
  end

  test "should destroy proy" do
    assert_difference('Proy.count', -1) do
      delete proy_url(@proy)
    end

    assert_redirected_to proys_url
  end
end
