class UrlsController < ApplicationController
  def create
    url = Url.create(long_url: params[:long_url])
  end
end
