class SprocketsController < ActionController::Base
  caches_page :show

  def show
    render :text => Sprocket.new(params[:file]).source, :content_type => "text/javascript"
  end
end
