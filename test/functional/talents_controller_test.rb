require 'test_helper'

class TalentsControllerTest < ActionController::TestCase
  setup do
    @talent = talents(:zaphod)
    @update = talents(:zaphod)
    @update.skills = [skills(:java)]
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talent" do
    assert_difference('Talent.count') do
      post :create, :talent => @talent.attributes
    end

    assert_redirected_to talent_path(assigns(:talent))
  end

  test "should show talent" do
    get :show, :id => @talent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @talent.to_param
    assert_response :success
  end

  test "should update talent" do
    put :update, :id => @talent.to_param, :talent => @talent.attributes
    assert_redirected_to talent_path(assigns(:talent))
  end

  test "should destroy talent" do
    assert_difference('Talent.count', -1) do
      delete :destroy, :id => @talent.to_param
    end

    assert_redirected_to talents_path
  end
  
  test "should get skills" do
    get :get_skills, :talent_id => @talent.to_param
    assert_response :success
  end
  
  test "should set skills" do
    @talent.skills[0] = []
    put :set_skills, :talent_id => @talent.to_param, :talent => @talent.attributes
    assert_redirected_to talent_path(assigns(:talent))
  end
  
  test "should set skills minus one" do
    assert_difference('@talent.skills.count', -1) do
      
      put :set_skills, :talent_id => @talent, :talent => @update.attributes
    end
    assert_redirected_to talent_path(assigns(:talent))
  end

  test "should set skills unset all" do
     @update.skills = []
     put :set_skills, :talent_id => @talent, :talent => @update.attributes
     assert_redirected_to talent_path(assigns(:talent))
   end
  
  test "should set skills plus one" do
    assert_difference('@update.skills.count', -1) do
      
      put :set_skills, :talent_id => @update, :talent => @talent.attributes
    end
    assert_redirected_to talent_path(assigns(:talent))
  end
  
  test "should remove all skills if type is changed" do
    @update.type_id = 3
    assert_difference('@talent.skills.count', -@talent.skills.count) do
      put :update, :id => @talent.to_param, :talent => @update.attributes
    end
    assert_redirected_to talent_path(assigns(:talent))
  end
  
  
  
end
