require 'test_helper'

class EntitiesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get entities_index_url
    assert_response :success
  end

  test 'should get show' do
    get entities_show_url
    assert_response :success
  end
end
