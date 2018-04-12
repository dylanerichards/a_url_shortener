class RedirectsController < ApplicationController
  def redirect
    url = Url.where(short_url: params[:short_url]).first

    redirect_to "http://" + url.long_url
  end
end
