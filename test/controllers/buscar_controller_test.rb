require "test_helper"

class BuscarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buscar_index_url
    assert_response :success
  end
end
