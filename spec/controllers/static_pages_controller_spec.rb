require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
setup do
  @base_title = "Ruby on Rails Tutorial Sample App"
end
  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
      assert_select "title", "Ruby on Rails Tutorial Sample App"
    end
  end
  test "should get help" do
    get :help
    expect(response).to have_http_status(:success)
  end
  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
      assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    end
  end
  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
      assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
      assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
    end
  end
end
