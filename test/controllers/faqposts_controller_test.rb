require 'test_helper'

class FaqpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faqpost = faqposts(:one)
  end

  test "should get index" do
    get faqposts_url
    assert_response :success
  end

  test "should get new" do
    get new_faqpost_url
    assert_response :success
  end

  test "should create faqpost" do
    assert_difference('Faqpost.count') do
      post faqposts_url, params: { faqpost: { content: @faqpost.content, title: @faqpost.title } }
    end

    assert_redirected_to faqpost_url(Faqpost.last)
  end

  test "should show faqpost" do
    get faqpost_url(@faqpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_faqpost_url(@faqpost)
    assert_response :success
  end

  test "should update faqpost" do
    patch faqpost_url(@faqpost), params: { faqpost: { content: @faqpost.content, title: @faqpost.title } }
    assert_redirected_to faqpost_url(@faqpost)
  end

  test "should destroy faqpost" do
    assert_difference('Faqpost.count', -1) do
      delete faqpost_url(@faqpost)
    end

    assert_redirected_to faqposts_url
  end
end
