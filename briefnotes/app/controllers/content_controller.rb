class ContentController < ApplicationController
  def index
  end

  def show
    @content = Content.new(params[:path])
    render 'show.html.erb'
  end
end
