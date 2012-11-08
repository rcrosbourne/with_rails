require 'test_helper'

class ApplicationlogsControllerTest < ActionController::TestCase
  setup do
    @applicationlog = applicationlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applicationlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applicationlog" do
    assert_difference('Applicationlog.count') do
      post :create, applicationlog: { log_channel: @applicationlog.log_channel, log_datetime: @applicationlog.log_datetime, log_filename: @applicationlog.log_filename, log_message: @applicationlog.log_message, log_source: @applicationlog.log_source, log_type: @applicationlog.log_type }
    end

    assert_redirected_to applicationlog_path(assigns(:applicationlog))
  end

  test "should show applicationlog" do
    get :show, id: @applicationlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applicationlog
    assert_response :success
  end

  test "should update applicationlog" do
    put :update, id: @applicationlog, applicationlog: { log_channel: @applicationlog.log_channel, log_datetime: @applicationlog.log_datetime, log_filename: @applicationlog.log_filename, log_message: @applicationlog.log_message, log_source: @applicationlog.log_source, log_type: @applicationlog.log_type }
    assert_redirected_to applicationlog_path(assigns(:applicationlog))
  end

  test "should destroy applicationlog" do
    assert_difference('Applicationlog.count', -1) do
      delete :destroy, id: @applicationlog
    end

    assert_redirected_to applicationlogs_path
  end
end
