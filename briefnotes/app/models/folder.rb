class Folder
  attr_accessor :requestpath, :fullpath,
                :fsobjects

  def initialize(requestpath='')
    @requestpath = requestpath
    @fullpath = construct_fullpath
    @fsobjects = construct_fsobjects
  end

  private

  def content_root_folder
    Rails.env == 'production' ? '/home/dlcmh/repos/briefnotes-content'
                              : '/Users/dlcmh/projects/briefnotes-content'
  end

  def construct_fsobjects
    fsos = Dir["#{@fullpath}/*"]
    array = []
    fsos.each do |fso|
      if File.file?(fso) && File.extname(fso).in?(%w(.md))
        array << MarkdownDocument.new(fso)
        next
      end
      array << fso
    end
    array
  end

  def construct_fullpath
    @requestpath.present? ? File.join(content_root_folder, @requestpath)
                          : content_root_folder
  end
end
