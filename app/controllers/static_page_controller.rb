class StaticPageController < ApplicationController

  def index
    if params[:flickr_id]
      @flickr_id = params[:flickr_id]
    else
      @flickr_id = "0000"
    end
  end
end
