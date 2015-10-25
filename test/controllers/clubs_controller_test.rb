require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: { description: @club.description, fb_link: @club.fb_link, instagram_link: @club.instagram_link, logo: @club.logo, name: @club.name, slogan: @club.slogan, twitter_link: @club.twitter_link, url: @club.url, url: @club.url, youtube_link: @club.youtube_link }
    end

    assert_redirected_to club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    patch :update, id: @club, club: { description: @club.description, fb_link: @club.fb_link, instagram_link: @club.instagram_link, logo: @club.logo, name: @club.name, slogan: @club.slogan, twitter_link: @club.twitter_link, url: @club.url, url: @club.url, youtube_link: @club.youtube_link }
    assert_redirected_to club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to clubs_path
  end
end
