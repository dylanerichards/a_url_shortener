class UrlsController < ApplicationController
  def create
    url = Url.new(long_url: params[:long_url])

    if url.save
      redirect_to url_path(url)
    else
      flash[:notice] = "[Error -- this does not look like a valid URL]"

      redirect_to root_path
    end

  end

  def show
    @url = Url.find(params[:id])
  end
end
