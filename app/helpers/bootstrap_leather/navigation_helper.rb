# frozen_string_literal: true

module BootstrapLeather
  # Navigation
  module NavigationHelper
    def nav_item(text, href, options = {})
      render(
        partial: 'bootstrap_leather/navigation/nav_item',
        locals: { text: text, href: href, options: options }
      )
    end

    def nav_heading(text, options = {})
      render(
        partial: 'bootstrap_leather/navigation/nav_heading',
        locals: { text: text, options: options }
      )
    end

    def nav_list(html_options = {}, &block)
      render(
        partial: 'bootstrap_leather/navigation/nav_list',
        locals: { block: capture(&block), html_options: html_options }
      )
    end

    def navbar(html_options = {}, &block)
      container_mode = html_options[:container_mode]
      html_options[:container_mode] = nil
      render(
        partial: 'bootstrap_leather/navigation/navbar',
        locals: {
          block: capture(&block),
          html_options: html_options,
          container_mode: container_mode
        }
      )
    end

    def navbar_with_container(html_options = {}, &block)
      html_options[:container_mode] = :with
      navbar(html_options, &block)
    end

    def navbar_in_container(html_options = {}, &block)
      html_options[:container_mode] = :in
      navbar(html_options, &block)
    end

    def dropdown_nav_item(text, href, active = false, &block)
      id = Time.now.to_f # Just to generate a unique id
      css_class = active ? 'active' : ''
      render(
        partial: 'bootstrap_leather/navigation/dropdown_nav_item',
        locals: {
          id: id, css_class: css_class, text: text, href: href,
          block: capture(&block)
        }
      )
    end

    def logo_and_title
      render(partial: 'bootstrap_leather/navigation/logo_and_title')
    end

    alias nav_bar navbar
    alias nav_bar_in_container navbar_in_container
    alias nav_bar_with_container navbar_with_container
    alias nav_header nav_heading
  end
end
