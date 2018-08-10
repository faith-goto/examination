require "application_system_test_case"

class WhatTestsTest < ApplicationSystemTestCase
  setup do
    @what_test = what_tests(:one)
  end

  test "visiting the index" do
    visit what_tests_url
    assert_selector "h1", text: "What Tests"
  end

  test "creating a What test" do
    visit what_tests_url
    click_on "New What Test"

    fill_in "Period", with: @what_test.period_id
    fill_in "Testname", with: @what_test.testname
    click_on "Create What test"

    assert_text "What test was successfully created"
    click_on "Back"
  end

  test "updating a What test" do
    visit what_tests_url
    click_on "Edit", match: :first

    fill_in "Period", with: @what_test.period_id
    fill_in "Testname", with: @what_test.testname
    click_on "Update What test"

    assert_text "What test was successfully updated"
    click_on "Back"
  end

  test "destroying a What test" do
    visit what_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "What test was successfully destroyed"
  end
end
