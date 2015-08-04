module BootstrapLeatherHelper

  def add_title(title)
    content_for :title, title
  end

  def add_subtitle(subtitle)
    content_for :subtitle, subtitle
  end

  def add_description(description)
    content_for :description, description
  end

  def add_keywords(keywords)
    content_for :keywords, keywords
  end

  def add_head_css(&block)
    content_for :head_css, &block
  end

  def add_footer_javascript(&block)
    content_for :footer_javascript, &block
  end

  def render_keywords
    tag :meta, :name => :keywords, :content => content_for(:keywords) || BootstrapLeather.configuration.application_keywords
  end

  def render_description
    tag :meta, :name => :description, :content => content_for(:description) || BootstrapLeather.configuration.application_keywords
  end

  def render_title
    page_title = []
    page_title << content_for(:title)
    page_title << content_for(:subtitle)
    page_title << BootstrapLeather.configuration.application_title
    page_title << content_for(:keywords)
    content_tag :title, page_title.compact.join(': ')
  end

  def render_h1(html_options = {})
    page_title = []
    page_title << content_for(:title)
    if content_for(:subtitle)
      page_title << content_tag(:small, content_for(:subtitle))
    end
    content_tag :h1, page_title.compact.join(' ').html_safe, html_options
  end

  def render_page_header(html_options = {})
    render(:partial => 'bootstrap_leather/page_header', :locals => {:title => content_for(:title), :subtitle => content_for(:subtitle), :html_options => html_options})
  end

  def responsive_meta_tag
    tag :meta, :name => :viewport, :content => 'width=device-width, initial-scale=1.0'
  end

  def flash_class(level)
    case level
      when :notice then 'info'
      when :error then 'danger'
      when :alert then 'warning'
    end
  end

  def alert_flash_messages(html_options = {})
    render(:partial => 'bootstrap_leather/alert_flash_messages', :locals => {:html_options => html_options})
  end

  def modal(id, title = '', close_text = 'Close', html_options = {}, &block)
    render(:partial => 'bootstrap_leather/modal', :locals => {:id => id, :close_text => close_text, :title => title, :block => capture(&block), :html_options => html_options})
  end

  def nav_item(text, href, options = {})
    render(:partial => 'bootstrap_leather/nav_item', :locals => {:text => text, :href => href, :options => options})
  end

  def nav_list(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/nav_list', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def navbar(html_options = {}, &block)
    container_mode = html_options[:container_mode]
    html_options[:container_mode] = nil
    render(:partial => 'bootstrap_leather/navbar', :locals => { :block => capture(&block), :html_options => html_options, :container_mode => container_mode })
  end

  def navbar_with_container(html_options = {}, &block)
    html_options[:container_mode] = :with
    navbar(html_options, &block)
  end

  def navbar_in_container(html_options = {}, &block)
    html_options[:container_mode] = :in
    navbar(html_options, &block)
  end

  def add_widget(html_options = {}, &block)
    @widgets ||= []
    @widgets << { html_options: html_options, body: capture(&block) }
  end

  def render_widgets(device_class = 'md', column_width = 3)
    html = render(:partial => 'bootstrap_leather/widgets', :locals => {:widgets => @widgets, :column_width => column_width, :device_class => device_class})
    @widgets = nil
    html.html_safe
  end

  def add_hero_unit(&block)
    content_for :hero_unit, &block
  end

  def dropdown_nav_item(text, href, active = false, &block)
    render(:partial => 'bootstrap_leather/dropdown_nav_item', :locals => {:block => capture(&block), :text => text, :href => href, :active => active})
  end

  def add_tab(label, id, args = {}, &block)
    active = false
    if @tabs.nil?
      @tabs = []
      active = true
    end
    before_link = args[:before_link] ? args[:before_link] : ''
    @tabs << {:id => id, :label => label, :active => active, :before_link =>before_link, :content => capture(&block)}
  end

  def render_tabs(orientation = 'top')
    html = render(:partial => 'bootstrap_leather/tabs', :locals => {:tabs => @tabs, :orientation => orientation})
    @tabs = nil
    html.html_safe
  end

  def badge_to(text, value, link, html_options={})
    html_options[:href] = url_for link
    render(:partial => 'bootstrap_leather/badge_to', :locals => {:text => text, :value => value, :html_options => html_options})
  end

  def badge(content, type = nil)
    render(:partial => 'bootstrap_leather/badge', :locals => {:content => content, :type => type})
  end

  def thumbnail(content = '', &block)
    render(:partial => 'bootstrap_leather/thumbnail', :locals => {:content => content ? content : capture(&block)})
  end

  def icon_link_to(icon_type, text, link, html_options={})
    render(:partial => 'bootstrap_leather/icon_link_to', :locals => {:icon_type => icon_type, :text => text, :link => link, :html_options => html_options})
  end

  def icon_button_to(button_class, icon_type, text, link, html_options={})
    html_options[:class] = 'btn btn-' + button_class
    render(:partial => 'bootstrap_leather/icon_button_to', :locals => {:button_class => button_class, :icon_type => icon_type, :text => text, :link => link, :html_options => html_options})
  end

  def icon(type)
    render(:partial => 'bootstrap_leather/icon', :locals => {:type => type})
  end

  def logo_and_title
    render(:partial => 'bootstrap_leather/logo_and_title')
  end

  def alert(css_class, title, message = nil)
    render(:partial => 'bootstrap_leather/alert', :locals => {:css_class => css_class, :title => title, :message => message})
  end

  def error_messages(object)
    if object.try(:errors) and object.errors.full_messages.any?
      title = I18n.t('bootstrap_forms.errors.header', :model => object.class.model_name.human.downcase)
      message = content_tag(:ul) do
                  object.errors.full_messages.map.each do |item|
                    concat content_tag(:li, item)
                  end
                end
      alert('alert-error', title, message).html_safe
    else
      '' # return empty string
    end
  end

  def render_hero_unit
    render(:partial => 'bootstrap_leather/hero_unit')
  end

  def render_head_css
    render(:partial => 'bootstrap_leather/head_css')
  end

  def render_footer_javascript
    render(:partial => 'bootstrap_leather/footer_javascript')
  end

  def column_class(device_class, column_width)
    'col-' + device_class + '-' + column_width.to_s
  end

  def definition_list(list, html_options = {})
    render(:partial => 'bootstrap_leather/definition_list', :locals => {:list => list, :html_options => html_options})
  end

  def carousel(id, items, html_options = {}, &block)
    html_options[:id] = id
    html_options[:data] ||= {}
    html_options[:data][:ride] = 'carousel'
    render(:partial => 'bootstrap_leather/carousel', :locals => { :id => id, :slides => items.collect { |item| capture(item, &block) }, :html_options => html_options })
  end

  def carousel_with_thumbnails(id, items, html_options = {}, &block)
    html_options[:id] = id
    html_options[:data] ||= {}
    html_options[:data][:ride] = 'carousel'
    render(:partial => 'bootstrap_leather/carousel_with_thumbnails', :locals => { :id => id, :slides => items.collect { |item| capture(item, &block) }, :html_options => html_options })
  end


  alias_method :dl, :definition_list
  alias_method :nav_bar, :navbar
  alias_method :nav_bar_in_container, :navbar_in_container
  alias_method :nav_bar_with_container, :navbar_with_container
end