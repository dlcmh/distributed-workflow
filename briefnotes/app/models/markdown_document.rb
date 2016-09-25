class MarkdownDocument
  include MarkdownHelper

  attr_accessor :fullpath, :rawcontent,
                :title, :body_text

  def initialize(fullpath)
    @fullpath = fullpath
    @rawcontent = File.read(@fullpath)
    @title, remainder = @rawcontent.split("\n", 2)
    @body_text = markdown(remainder.strip)
  end
end
