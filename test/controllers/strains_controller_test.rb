require 'test_helper'

class StrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @strain = strains(:one)
  end

  test "should get index" do
    get strains_url, as: :json
    assert_response :success
  end

  test "should create strain" do
    assert_difference('Strain.count') do
      post strains_url, params: { strain: { fav: @strain.fav, img: @strain.img, name: @strain.name, type: @strain.type } }, as: :json
    end

    assert_response 201
  end

  test "should show strain" do
    get strain_url(@strain), as: :json
    assert_response :success
  end

  test "should update strain" do
    patch strain_url(@strain), params: { strain: { fav: @strain.fav, img: @strain.img, name: @strain.name, type: @strain.type } }, as: :json
    assert_response 200
  end

  test "should destroy strain" do
    assert_difference('Strain.count', -1) do
      delete strain_url(@strain), as: :json
    end

    assert_response 204
  end
end
