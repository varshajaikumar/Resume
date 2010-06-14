require 'test_helper'

class PersonalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post :create, :personal => { }
    end

    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should show personal" do
    get :show, :id => personals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => personals(:one).to_param
    assert_response :success
  end

  test "should update personal" do
    put :update, :id => personals(:one).to_param, :personal => { }
    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete :destroy, :id => personals(:one).to_param
    end

    assert_redirected_to personals_path
  end
end
