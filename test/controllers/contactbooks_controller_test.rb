require "test_helper"

class ContactbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contactbook = contactbooks(:one)
  end

  test "should get index" do
    get contactbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_contactbook_url
    assert_response :success
  end

  test "should create contactbook" do
    assert_difference("Contactbook.count") do
      post contactbooks_url, params: { contactbook: { email: @contactbook.email, name: @contactbook.name, number: @contactbook.number } }
    end

    assert_redirected_to contactbook_url(Contactbook.last)
  end

  test "should show contactbook" do
    get contactbook_url(@contactbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_contactbook_url(@contactbook)
    assert_response :success
  end

  test "should update contactbook" do
    patch contactbook_url(@contactbook), params: { contactbook: { email: @contactbook.email, name: @contactbook.name, number: @contactbook.number } }
    assert_redirected_to contactbook_url(@contactbook)
  end

  test "should destroy contactbook" do
    assert_difference("Contactbook.count", -1) do
      delete contactbook_url(@contactbook)
    end

    assert_redirected_to contactbooks_url
  end
end
