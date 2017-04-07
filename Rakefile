# frozen_string_literal: true

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path('../spec/dummy/Rakefile', __FILE__)
load 'rails/tasks/engine.rake'

load 'rails/tasks/statistics.rake'

require 'bundler/gem_tasks'

require 'juwelier'
Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification...
  # see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "bootstrap_leather"
  gem.homepage = "http://www.gemvein.com/museum/cases/bootstrap_leather"
  gem.license = "MIT"
  gem.summary = %Q{BootstrapLeather makes it easier to create apps using Twitter Bootstrap}
  gem.description = %Q{BootstrapLeather is a collection of view helpers and scaffold generators that makes it easier to create apps using Twitter Bootstrap}
  gem.email = "karen.e.lundgren@gmail.com"
  gem.authors = ["Karen Lundgren"]
  # dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new

task default: :spec
