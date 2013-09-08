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
    attr_accessor :config_variable_name
    
    def initialize
      self.config_variable_name = 'config_variable_value'
    end
  end
end