require 'test_helper'

class WhatTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @what_test = what_tests(:one)
  end

  test "should get index" do
    get what_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_what_test_url
    assert_response :success
  end

  test "should create what_test" do
    assert_difference('WhatTest.count') do
      post what_tests_url, params: { what_test: { period_id: @what_test.period_id, testname: @what_test.testname } }
    end

    assert_redirected_to what_test_url(WhatTest.last)
  end

  test "should show what_test" do
    get what_test_url(@what_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_what_test_url(@what_test)
    assert_response :success
  end

  test "should update what_test" do
    patch what_test_url(@what_test), params: { what_test: { period_id: @what_test.period_id, testname: @what_test.testname } }
    assert_redirected_to what_test_url(@what_test)
  end

  test "should destroy what_test" do
    assert_difference('WhatTest.count', -1) do
      delete what_test_url(@what_test)
    end

    assert_redirected_to what_tests_url
  end
end
