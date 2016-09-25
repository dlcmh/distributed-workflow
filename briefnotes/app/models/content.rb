class Content
  include MarkdownHelper

  attr_accessor :structure

  def initialize(path)
    @path = path
    @fullpath = fullpath
    if File.directory?(@fullpath)
      content
    else
      raise ActionController::RoutingError, 'Not Found'
    end
  end

  def content
    fsobjects = Folder.new(@path).fsobjects
  end

  def structure
    Struct.new(:title, :content)
  end

  private

  def fullpath
    File.join(CONTENT_ROOT_FOLDER, @path)
  end
end
