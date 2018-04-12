require 'rails_helper'

describe UrlsController do
  describe "#create" do
    it "creates a new url" do
      expect{
        post :create, params: { long_url: "http://www.google.com" }
      }.to change(Url, :count).by 1
    end
  end

  describe "#show" do
    it "assigns the correct URL" do
      url = Url.create(long_url: "http://www.google.com")

      get :show, params: { id: url.id }

      expect(assigns(:url)).to eq url
    end
  end
end
