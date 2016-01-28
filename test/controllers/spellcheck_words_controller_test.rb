require 'test_helper'

class SpellcheckWordsControllerTest < ActionController::TestCase
  test "should get spellcheck" do
    get :spellcheck
    assert_response :success
  end

end
