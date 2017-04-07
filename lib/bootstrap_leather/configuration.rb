# frozen_string_literal: true

# Configuration for the BootstrapLeather module
module BootstrapLeather
  def self.configure(configuration = BootstrapLeather::Configuration.new)
    yield configuration if block_given?
    @configuration = configuration
  end

  def self.configuration
    @configuration ||= BootstrapLeather::Configuration.new
  end

  # Configuration class
  class Configuration
    attr_accessor :application_title, :application_description,
                  :application_keywords, :application_path, :application_logo

    def initialize
      self.application_logo = '/assets/logo.svg'
      self.application_path = '/'
      self.application_title = 'Run the Generator, Config and Restart'
      self.application_description = 'Try it, very easy. `rails g '\
        'bootstrap_leather:install` is the generator command.'
      self.application_keywords = 'Then, fix, your, config, file'
    end
  end
end
