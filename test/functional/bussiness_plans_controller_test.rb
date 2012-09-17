require 'test_helper'

class BussinessPlansControllerTest < ActionController::TestCase
  setup do
    @bussiness_plan = bussiness_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bussiness_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bussiness_plan" do
    assert_difference('BussinessPlan.count') do
      post :create, bussiness_plan: { net_margin: @bussiness_plan.net_margin, reason: @bussiness_plan.reason, roi: @bussiness_plan.roi, runtime: @bussiness_plan.runtime, title: @bussiness_plan.title, total_investment: @bussiness_plan.total_investment, vision: @bussiness_plan.vision }
    end

    assert_redirected_to bussiness_plan_path(assigns(:bussiness_plan))
  end

  test "should show bussiness_plan" do
    get :show, id: @bussiness_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bussiness_plan
    assert_response :success
  end

  test "should update bussiness_plan" do
    put :update, id: @bussiness_plan, bussiness_plan: { net_margin: @bussiness_plan.net_margin, reason: @bussiness_plan.reason, roi: @bussiness_plan.roi, runtime: @bussiness_plan.runtime, title: @bussiness_plan.title, total_investment: @bussiness_plan.total_investment, vision: @bussiness_plan.vision }
    assert_redirected_to bussiness_plan_path(assigns(:bussiness_plan))
  end

  test "should destroy bussiness_plan" do
    assert_difference('BussinessPlan.count', -1) do
      delete :destroy, id: @bussiness_plan
    end

    assert_redirected_to bussiness_plans_path
  end
end
