require 'test_helper'

class ImgcommentsControllerTest < ActionController::TestCase
  setup do
    @imgcomment = imgcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imgcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imgcomment" do
    assert_difference('Imgcomment.count') do
      post :create, imgcomment: { body: @imgcomment.body, email: @imgcomment.email, image_id: @imgcomment.image_id, nickname: @imgcomment.nickname }
    end

    assert_redirected_to imgcomment_path(assigns(:imgcomment))
  end

  test "should show imgcomment" do
    get :show, id: @imgcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imgcomment
    assert_response :success
  end

  test "should update imgcomment" do
    put :update, id: @imgcomment, imgcomment: { body: @imgcomment.body, email: @imgcomment.email, image_id: @imgcomment.image_id, nickname: @imgcomment.nickname }
    assert_redirected_to imgcomment_path(assigns(:imgcomment))
  end

  test "should destroy imgcomment" do
    assert_difference('Imgcomment.count', -1) do
      delete :destroy, id: @imgcomment
    end

    assert_redirected_to imgcomments_path
  end
end
