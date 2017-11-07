require 'test_helper'

class AgentCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get agent_categories_show_url
    assert_response :success
  end

  test "should get index" do
    get agent_categories_index_url
    assert_response :success
  end

  test "should get new" do
    get agent_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get agent_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get agent_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get agent_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get agent_categories_destroy_url
    assert_response :success
  end

end
