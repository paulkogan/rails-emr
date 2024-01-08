require "test_helper"

class ProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provider = providers(:one)
  end

  test "should get index" do
    get providers_url, as: :json
    assert_response :success
  end

  test "should create provider" do
    assert_difference("Provider.count") do
      post providers_url, params: { provider: { name: @provider.name, org_id: @provider.org_id, role: @provider.role } }, as: :json
    end

    assert_response :created
  end

  test "should show provider" do
    get provider_url(@provider), as: :json
    assert_response :success
  end

  test "should update provider" do
    patch provider_url(@provider), params: { provider: { name: @provider.name, org_id: @provider.org_id, role: @provider.role } }, as: :json
    assert_response :success
  end

  test "should destroy provider" do
    assert_difference("Provider.count", -1) do
      delete provider_url(@provider), as: :json
    end

    assert_response :no_content
  end
end
