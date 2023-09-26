require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "name", email: "email@example.com", password: "password", password_confirmation: "password")
  end

  test "user should be valid" do
    assert @user.valid?
  end

  test "can not save without name" do
    @user.name = nil
    
    assert_not @user.valid?
  end

  test "can not save without email" do
    @user.email = nil
    
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51

    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"

    assert_not @user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6

    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    
    assert_not @user.valid?
  end
end
