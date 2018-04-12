require 'rails_helper'

describe UrlsController do
  describe "#create" do
    it "creates a new url" do
      expect{
        post :create, params: { long_url: "www.google.com" }
      }.to change(Url, :count).by 1
    end
  end
end
