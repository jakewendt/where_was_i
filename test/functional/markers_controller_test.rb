require 'test_helper'

class MarkersControllerTest < ActionController::TestCase
	test "should get index" do
		get :index
		assert_response :success
		assert_not_nil assigns(:markers)
	end

#	test "should get new" do
#		get :new
#		assert_response :success
#	end

	test "should create marker" do
		assert_difference('Marker.count') do
			post :create, :marker => { }
		end
		assert_match /Success/, @response.body
#		assert_redirected_to marker_path(assigns(:marker))
	end

	test "should show marker" do
		get :show, :id => markers(:one).to_param
		assert_response :success
	end

#	test "should get edit" do
#		get :edit, :id => markers(:one).to_param
#		assert_response :success
#	end
#
#	test "should update marker" do
#		put :update, :id => markers(:one).to_param, :marker => { }
#		assert_redirected_to marker_path(assigns(:marker))
#	end
#
#	test "should destroy marker" do
#		assert_difference('Marker.count', -1) do
#			delete :destroy, :id => markers(:one).to_param
#		end
#
#		assert_redirected_to markers_path
#	end
end
