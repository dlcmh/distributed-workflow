module MarkdownHelper

  # DLC
  # https://richonrails.com/articles/rendering-markdown-with-redcarpet
  # def markdown(text)
  #   options = {
  #     filter_html:         true,
  #     hard_wrap:           true,
  #     # link_attributes: { rel: 'nofollow', target: "_blank" },
  #     space_after_headers: true,
  #     fenced_code_blocks:  true
  #   }
  #
  #   extensions = {
  #     autolink:            true,
  #     superscript:         true,
  #     disable_indented_code_blocks: true
  #   }
  #
  #   renderer = Redcarpet::Render::HTML.new(options)
  #   markdown = Redcarpet::Markdown.new(renderer, extensions)
  #
  #   markdown.render(text).html_safe
  # end

  # DLC
  # http://codepen.io/asommer70/post/markdown-in-rails-yes-please - wrapped with def markdown(text)
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                       no_intra_emphasis: true,
                                       fenced_code_blocks: true,
                                       disable_indented_code_blocks: true,
                                       autolink: true,
                                       tables: true,
                                       underline: true,
                                       highlight: true
                                      )
    markdown.render(text).html_safe
  end

  def markdown_line(text)
    renderer = HTMLWithoutBlockElements.new({
      :filter_html => true,
      :hard_wrap => true
    })
    markdown = Redcarpet::Markdown.new(renderer, {
      :autolink => true,
      :no_intra_emphasis => true
    })

    markdown.render(text).html_safe
  end
end
