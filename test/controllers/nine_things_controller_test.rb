require 'test_helper'

class NineThingsControllerTest < ActionController::TestCase
  setup do
    @nine_thing = nine_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nine_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nine_thing" do
    assert_difference('NineThing.count') do
      post :create, nine_thing: { name: @nine_thing.name, nine_number: @nine_thing.nine_number }
    end

    assert_redirected_to nine_thing_path(assigns(:nine_thing))
  end

  test "should show nine_thing" do
    get :show, id: @nine_thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nine_thing
    assert_response :success
  end

  test "should update nine_thing" do
    patch :update, id: @nine_thing, nine_thing: { name: @nine_thing.name, nine_number: @nine_thing.nine_number }
    assert_redirected_to nine_thing_path(assigns(:nine_thing))
  end

  test "should destroy nine_thing" do
    assert_difference('NineThing.count', -1) do
      delete :destroy, id: @nine_thing
    end

    assert_redirected_to nine_things_path
  end
end
