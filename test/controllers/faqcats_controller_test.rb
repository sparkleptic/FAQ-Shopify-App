require 'test_helper'

class FaqcatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faqcat = faqcats(:one)
  end

  test "should get index" do
    get faqcats_url
    assert_response :success
  end

  test "should get new" do
    get new_faqcat_url
    assert_response :success
  end

  test "should create faqcat" do
    assert_difference('Faqcat.count') do
      post faqcats_url, params: { faqcat: { title: @faqcat.title } }
    end

    assert_redirected_to faqcat_url(Faqcat.last)
  end

  test "should show faqcat" do
    get faqcat_url(@faqcat)
    assert_response :success
  end

  test "should get edit" do
    get edit_faqcat_url(@faqcat)
    assert_response :success
  end

  test "should update faqcat" do
    patch faqcat_url(@faqcat), params: { faqcat: { title: @faqcat.title } }
    assert_redirected_to faqcat_url(@faqcat)
  end

  test "should destroy faqcat" do
    assert_difference('Faqcat.count', -1) do
      delete faqcat_url(@faqcat)
    end

    assert_redirected_to faqcats_url
  end
end
