require 'test_helper'

class SkillsControllerTest < ActionController::TestCase
  setup do
    @skill = skills(:java)
    @skill_to_delete = skills(:jira)
    @skill_create = Skill.new(:name => 'Spaceship Pilot')
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post :create, :skill => @skill_create.attributes
    end

    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should show skill" do
    get :show, :id => @skill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @skill.to_param
    assert_response :success
  end

  test "should update skill" do
    put :update, :id => @skill.to_param, :skill => @skill.attributes
    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete :destroy, :id => @skill_to_delete.to_param
    end

    assert_redirected_to skills_path
  end

  test "should not destroy skill it still has talents assigned to it" do
    assert_difference('Skill.count', 0) do
      delete :destroy, :id => @skill.to_param
    end

    assert_redirected_to skills_path
  end
end
