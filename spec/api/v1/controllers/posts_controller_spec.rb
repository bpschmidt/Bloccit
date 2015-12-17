require 'rails_helper'
include RandomData

RSpec.describe Api::V1::PostsController, type: :controller do
  let(:my_user) { create(:user) }
  let(:other_user) { create(:user) }
  let (:my_topic) { create(:topic) }
  let(:my_post) { create(:post, topic: my_topic, user: my_user) }

  context "authorized user" do
    before do
      controller.request.env['HTTP_AUTHORIZATION'] =  ActionController::HttpAuthentication::Token.encode_credentials(my_user.auth_token)
      controller.authenticate_user
    end

    describe "authenticated user" do
      it "finds a user by their authentication token" do
        expect(assigns(:current_user)).to eq my_user
      end
    end
  end
end
