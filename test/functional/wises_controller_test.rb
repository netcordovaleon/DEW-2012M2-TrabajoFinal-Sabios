require 'test_helper'

class WisesControllerTest < ActionController::TestCase
  setup do
    @wise = wises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wise" do
    assert_difference('Wise.count') do
      post :create, :wise => { :apellation => @wise.apellation, :banck_account => @wise.banck_account, :bank => @wise.bank, :summary => @wise.summary, :website => @wise.website }
    end

    assert_redirected_to wise_path(assigns(:wise))
  end

  test "should show wise" do
    get :show, :id => @wise
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wise
    assert_response :success
  end

  test "should update wise" do
    put :update, :id => @wise, :wise => { :apellation => @wise.apellation, :banck_account => @wise.banck_account, :bank => @wise.bank, :summary => @wise.summary, :website => @wise.website }
    assert_redirected_to wise_path(assigns(:wise))
  end

  test "should destroy wise" do
    assert_difference('Wise.count', -1) do
      delete :destroy, :id => @wise
    end

    assert_redirected_to wises_path
  end
end
