# Message Train module
module BootstrapLeather
  VERSION = File.read(File.expand_path('../../../VERSION', __FILE__))

  def self.version_string
    "BootstrapLeather version #{BootstrapLeather::VERSION}"
  end
end
