# frozen_string_literal: true

module BootstrapLeather
  # Typography
  module TypographyHelper
    def render_h1(html_options = {})
      page_title = []
      page_title << content_for(:title)
      if content_for(:subtitle)
        page_title << content_tag(:small, content_for(:subtitle))
      end
      content_tag :h1, page_title.compact.join(' ').html_safe, html_options
    end

    def render_page_header(html_options = {})
      render(
        partial: 'bootstrap_leather/typography/page_header',
        locals: {
          title: content_for(:title),
          subtitle: content_for(:subtitle),
          html_options: html_options
        }
      )
    end

    def dl(list, html_options = {})
      render(
        partial: 'bootstrap_leather/typography/dl',
        locals: {
          list: list,
          html_options: html_options
        }
      )
    end
    alias description_list dl
    alias definition_list dl
  end
end
