require 'test_helper'

class OmniauthCallbacksTest < ActionDispatch::IntegrationTest
  test "raises the correct error on failure" do
    User.expects(:authenticate_from_omniauth).raises

    get user_github_omniauth_callback_path
    follow_redirect!

    assert_select "#alert", "Sorry, we could not authenticate you from GitHub. Check the <a href='/faqs'>FAQs</a> for more information."
  end
end
