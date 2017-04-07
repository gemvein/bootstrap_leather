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
        partial: 'bootstrap_leather/head/page_header',
        locals: {
          title: content_for(:title),
          subtitle: content_for(:subtitle),
          html_options: html_options
        }
      )
    end

    def definition_list(list, html_options = {})
      render(
        partial: 'bootstrap_leather/typography/definition_list',
        locals: {
          list: list,
          html_options: html_options
        }
      )
    end
    alias dl definition_list
  end
end
