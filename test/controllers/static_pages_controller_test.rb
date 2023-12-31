require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", text: "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", text: "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", text: "About | Ruby on Rails Tutorial Sample App"
  end
    
    test "should get contact" do
      get contact_url
      assert_response :success
      assert_select "title", text: "Contact | Ruby on Rails Tutorial Sample App"
    end
end