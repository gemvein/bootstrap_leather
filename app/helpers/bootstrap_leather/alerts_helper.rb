# frozen_string_literal: true

module BootstrapLeather
  # Alerts, i.e. messages at the top of the page, usually from flash
  # or form errors
  module AlertsHelper
    def flash_class(level)
      case level
      when :notice then
        'info'
      when :error then
        'danger'
      when :alert then
        'warning'
      end
    end

    def alert_flash_messages(html_options = {})
      render(
        partial: 'bootstrap_leather/alerts/alert_flash_messages',
        locals: { html_options: html_options }
      )
    end

    def alert(css_class, title, message = nil)
      render(
        partial: 'bootstrap_leather/alerts/alert',
        locals: {
          css_class: css_class,
          title: title,
          message: message
        }
      )
    end

    def error_messages(object)
      errors = object&.errors&.full_messages
      return unless errors.any?
      title = I18n.t(
        'bootstrap_forms.errors.header',
        model: object.class.model_name.human.downcase
      )
      render(
        partial: 'bootstrap_leather/alerts/error_messages',
        locals: { title: title, errors: errors }
      )
    end
  end
end
