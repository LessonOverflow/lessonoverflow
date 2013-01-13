require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: { author: @resource.author, common_core: @resource.common_core, description: @resource.description, educational_use: @resource.educational_use, in_language: @resource.in_language, intended_end_use_role: @resource.intended_end_use_role, interactivity_type: @resource.interactivity_type, is_based_on_url: @resource.is_based_on_url, learning_resource_type: @resource.learning_resource_type, location: @resource.location, publisher_id: @resource.publisher_id, time_required: @resource.time_required, title: @resource.title, typical_age_range: @resource.typical_age_range, use_rights_url: @resource.use_rights_url }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    put :update, id: @resource, resource: { author: @resource.author, common_core: @resource.common_core, description: @resource.description, educational_use: @resource.educational_use, in_language: @resource.in_language, intended_end_use_role: @resource.intended_end_use_role, interactivity_type: @resource.interactivity_type, is_based_on_url: @resource.is_based_on_url, learning_resource_type: @resource.learning_resource_type, location: @resource.location, publisher_id: @resource.publisher_id, time_required: @resource.time_required, title: @resource.title, typical_age_range: @resource.typical_age_range, use_rights_url: @resource.use_rights_url }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
