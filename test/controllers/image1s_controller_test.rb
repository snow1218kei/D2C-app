require 'test_helper'

class Image1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image1 = image1s(:one)
  end

  test "should get index" do
    get image1s_url
    assert_response :success
  end

  test "should get new" do
    get new_image1_url
    assert_response :success
  end

  test "should create image1" do
    assert_difference('Image1.count') do
      post image1s_url, params: { image1: { image: @image1.image } }
    end

    assert_redirected_to image1_url(Image1.last)
  end

  test "should show image1" do
    get image1_url(@image1)
    assert_response :success
  end

  test "should get edit" do
    get edit_image1_url(@image1)
    assert_response :success
  end

  test "should update image1" do
    patch image1_url(@image1), params: { image1: { image: @image1.image } }
    assert_redirected_to image1_url(@image1)
  end

  test "should destroy image1" do
    assert_difference('Image1.count', -1) do
      delete image1_url(@image1)
    end

    assert_redirected_to image1s_url
  end
end
