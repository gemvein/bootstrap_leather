# frozen_string_literal: true

module BootstrapLeather
  # Helpers to interact with the grid
  module GridHelper
    def column_class(device_class, column_width)
      'col-' + device_class + '-' + column_width.to_s
    end
  end
end
