require 'rails_helper'

describe Url do
  # it "will not save with an invalid long_url" do
  #   url = Url.create(long_url: "poop")
  #   expect(url).to_not be_valid
  # end

  it "creates a shortened url upon saving" do
    url = Url.create(long_url: "http://www.google.com")
    expect(url.short_url).to_not be_nil
    expect(url.short_url).to be_a String
  end
end
