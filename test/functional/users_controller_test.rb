require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { :addres => @user.addres, :birth_date => @user.birth_date, :cellular => @user.cellular, :document_number => @user.document_number, :document_type => @user.document_type, :email => @user.email, :firstname => @user.firstname, :lastname => @user.lastname, :name => @user.name, :password => @user.password, :sexo => @user.sexo }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, :id => @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user
    assert_response :success
  end

  test "should update user" do
    put :update, :id => @user, :user => { :addres => @user.addres, :birth_date => @user.birth_date, :cellular => @user.cellular, :document_number => @user.document_number, :document_type => @user.document_type, :email => @user.email, :firstname => @user.firstname, :lastname => @user.lastname, :name => @user.name, :password => @user.password, :sexo => @user.sexo }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :id => @user
    end

    assert_redirected_to users_path
  end
end
