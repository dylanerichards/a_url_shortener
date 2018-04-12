require 'rails_helper'

describe "shortening a url" do
  it "shortens a url" do
    visit root_path

    fill_in "long_url", with: "http://www.google.com"

    click_button "Shorten"

    expect(page).to have_content("Here is your shortened URL")
    expect(page).to have_content(Url.last.short_url)
  end

  it "will not shorten an invalid long_url" do
    visit root_path

    fill_in "long_url", with: "poop"

    click_button "Shorten"

    expect(page).to_not have_content("Here is your shortened URL")
    expect(page).to have_content("[Error -- this does not look like a valid URL]")
  end
end
