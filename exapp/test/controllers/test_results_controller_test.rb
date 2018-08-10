require 'test_helper'

class TestResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_result = test_results(:one)
  end

  test "should get index" do
    get test_results_url
    assert_response :success
  end

  test "should get new" do
    get new_test_result_url
    assert_response :success
  end

  test "should create test_result" do
    assert_difference('TestResult.count') do
      post test_results_url, params: { test_result: { eng: @test_result.eng, jpn: @test_result.jpn, math: @test_result.math, sci: @test_result.sci, soc: @test_result.soc, user_id: @test_result.user_id, what_test_id: @test_result.what_test_id } }
    end

    assert_redirected_to test_result_url(TestResult.last)
  end

  test "should show test_result" do
    get test_result_url(@test_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_result_url(@test_result)
    assert_response :success
  end

  test "should update test_result" do
    patch test_result_url(@test_result), params: { test_result: { eng: @test_result.eng, jpn: @test_result.jpn, math: @test_result.math, sci: @test_result.sci, soc: @test_result.soc, user_id: @test_result.user_id, what_test_id: @test_result.what_test_id } }
    assert_redirected_to test_result_url(@test_result)
  end

  test "should destroy test_result" do
    assert_difference('TestResult.count', -1) do
      delete test_result_url(@test_result)
    end

    assert_redirected_to test_results_url
  end
end
