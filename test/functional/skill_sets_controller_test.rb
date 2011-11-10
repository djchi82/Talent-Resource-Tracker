require 'test_helper'

class SkillSetsControllerTest < ActionController::TestCase
  setup do
    @skill_set = skill_sets(:java_developer)
    @skill_set_create = SkillSet.new(:name => 'Product Owner')
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_set" do
    assert_difference('SkillSet.count') do
      post :create, :skill_set => @skill_set_create.attributes
    end

    assert_redirected_to skill_set_path(assigns(:skill_set))
  end

  test "should show skill_set" do
    get :show, :id => @skill_set.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skill_set.to_param
    assert_response :success
  end

  test "should update skill_set" do
    put :update, :id => @skill_set.to_param, :skill_set => @skill_set.attributes
    assert_redirected_to skill_set_path(assigns(:skill_set))
  end

  test "should destroy skill_set" do
    assert_difference('SkillSet.count', -1) do
      delete :destroy, :id => @skill_set.to_param
    end

    assert_redirected_to skill_sets_path
  end
end
