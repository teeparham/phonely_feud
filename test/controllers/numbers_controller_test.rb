require 'test_helper'

class NumbersControllerTest < ActionController::TestCase
  test "should get show" do
    number = Number.create(digits: "1112223333")
    get :show, id: number.digits
    assert_response :success
  end

  test "should create" do
    post :create, number: { digits: "9998887777"}
    assert_response :redirect
    assert Number.find_by_digits("9998887777")
  end

  test "should show existing number" do
    Number.create(digits: "1112223333")
    post :create, number: { digits: "1112223333"}
    assert_response :redirect
    assert_equal 1, Number.where(digits: "1112223333").count
  end

end
