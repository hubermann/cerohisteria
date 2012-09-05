require 'test_helper'

class PostcommentsControllerTest < ActionController::TestCase
  setup do
    @postcomment = postcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postcomment" do
    assert_difference('Postcomment.count') do
      post :create, postcomment: { body: @postcomment.body, email: @postcomment.email, nickname: @postcomment.nickname, post_id: @postcomment.post_id }
    end

    assert_redirected_to postcomment_path(assigns(:postcomment))
  end

  test "should show postcomment" do
    get :show, id: @postcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postcomment
    assert_response :success
  end

  test "should update postcomment" do
    put :update, id: @postcomment, postcomment: { body: @postcomment.body, email: @postcomment.email, nickname: @postcomment.nickname, post_id: @postcomment.post_id }
    assert_redirected_to postcomment_path(assigns(:postcomment))
  end

  test "should destroy postcomment" do
    assert_difference('Postcomment.count', -1) do
      delete :destroy, id: @postcomment
    end

    assert_redirected_to postcomments_path
  end
end
