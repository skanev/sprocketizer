module Sprocketizer
  class SprocketsController < ActionController::Base
    caches_page :show

    def show
      render :text => Sprocketizer::Sprocket.new(params[:file]).source, :content_type => "text/javascript"
    end
  end
end
