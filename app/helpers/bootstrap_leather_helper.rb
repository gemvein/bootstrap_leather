module BootstrapLeatherHelper

  def add_title(title)
    @title = title
  end

  def add_description(description)
    @description = description
  end

  def add_keywords(keywords)
    @keywords = keywords
  end

  def render_keywords
    tag :meta, :name => :keywords, :content => @keywords || BootstrapLeather.configuration.application_keywords
  end

  def render_description
    tag :meta, :name => :description, :content => @description || BootstrapLeather.configuration.application_keywords
  end

  def render_title
    page_title = []
    page_title << @title
    page_title << BootstrapLeather.configuration.application_title
    page_title << @keywords
    content_tag :title, page_title.compact.join(': ')
  end

  def render_h1(html_options = {})
    content_tag :h1, @title, html_options
  end

  def flash_class(level)
    case level
      when :notice then 'alert-info'
      when :error then 'alert-error'
      when :alert then 'alert-warning'
    end
  end

  def alert_flash_messages(html_options = {})
    render(:partial => 'bootstrap_leather/alert_flash_messages', :locals => {:html_options => html_options})
  end

  def modal(title, close_text = 'Close', html_options = {}, &block)
    render(:partial => 'bootstrap_leather/modal', :locals => {:close_text => close_text, :title => title, :block => capture(&block), :html_options => html_options})
  end

  def nav_item(text, href, options = {})
    render(:partial => 'bootstrap_leather/nav_item', :locals => {:text => text, :href => href, :options => options})
  end

  def nav_list(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/nav_list', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def breadcrumb(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/breadcrumb', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def navbar(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/navbar', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def navbar_with_container(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/navbar_with_container', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def navbar_in_container(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/navbar_in_container', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def container(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/navbar_in_container', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def row(html_options = {}, &block)
    render(:partial => 'bootstrap_leather/navbar_with_container', :locals => {:block => capture(&block), :html_options => html_options})
  end

  def add_widget(html_options = {}, &block)
    content_for :widgets do
      render(:partial => 'bootstrap_leather/widget', :locals => {:block => capture(&block), :html_options => html_options})
    end
  end

  def add_hero_unit(&block)
    content_for :hero_unit do
      capture(&block)
    end
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

  def badge(content, type)
    render(:partial => 'bootstrap_leather/badge', :locals => {:content => content, :type => type})
  end

  def thumbnail(content = '', &block)
    render(:partial => 'bootstrap_leather/thumbnail', :locals => {:content => content ? content : capture(&block)})
  end

  def icon(type)
    render(:partial => 'bootstrap_leather/icon', :locals => {:type => type})
  end

  def alert(css_class, title, message = nil)
    render(:partial => 'bootstrap_leather/alert', :locals => {:css_class => css_class, :title => title, :message => message})
  end

  def error_messages(object)
    if object.try(:errors) and object.errors.full_messages.any?
      title = I18n.t('bootstrap_forms.errors.header', :model => object.class.model_name.human.downcase)
      message = render(:partial => 'layouts/list', :locals => {:items => object.errors.full_messages.map})
      alert('alert-error', title, message).html_safe
    else
      '' # return empty string
    end
  end

  def render_widgets
    render(:partial => 'bootstrap_leather/widgets')
  end

  def render_hero_unit
    render(:partial => 'bootstrap_leather/hero_unit')
  end
  alias_method :breadcrumbs, :breadcrumb
  alias_method :nav_bar, :navbar
  alias_method :nav_bar_in_container, :navbar_in_container
  alias_method :nav_bar_with_container, :navbar_with_container
end