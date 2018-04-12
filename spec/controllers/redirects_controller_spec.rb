require 'rails_helper'

describe RedirectsController do
  before(:each) do
    @request.host = ''
  end

  it "redirects to a url's long path" do
    url = Url.create(long_url: "http://www.google.com")

    get :redirect, params: { short_url: url.short_url }

    expect(response).to redirect_to url.long_url
  end
end
