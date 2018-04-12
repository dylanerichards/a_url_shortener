require 'rails_helper'

describe "shortening a url" do
  it "shortens a url" do
    visit root_path

    fill_in "long_url", with: "http://www.google.com"

    click_button "Shorten"

    expect(page).to have_content("Here is your shortened URL")
  end
end
