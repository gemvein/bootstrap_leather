module BootstrapLeather
  def self.configure(configuration = BootstrapLeather::Configuration.new)
    if block_given?
      yield configuration
    end
    @@configuration = configuration
  end
  
  def self.configuration
    @@configuration ||= BootstrapLeather::Configuration.new
  end
  
  class Configuration
    attr_accessor :application_title, :application_description, :application_keywords, :application_path, :application_logo
    
    def initialize
      self.application_logo = '/assets/logo.svg'
      self.application_path = '/'
      self.application_title = 'Run the Generator, Config and Restart'
      self.application_description = 'Try it, very easy. `rails g bootstrap_leather:install` is the generator command.'
      self.application_keywords = 'Then,fix,your,config,file'
    end
  end
end