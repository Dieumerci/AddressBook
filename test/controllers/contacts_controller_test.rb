require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "index action should be success" do
    get :index
     assert_response :success
   end

   test "new function should be success" do
    get :new
      assert_response :success
   end

   test "show should be succes" do
      post = contacts(:post_contact)
        get :show, id: contact.id
        assert_response :success
   end
end
