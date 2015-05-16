# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "bootstrap_leather"
  gem.homepage = "http://www.gemvein.com/museum/cases/bootstrap_leather"
  gem.license = "MIT"
  gem.summary = %Q{BootstrapLeather makes it easier to create apps using Twitter Bootstrap}
  gem.description = %Q{BootstrapLeather is a collection of view helpers that makes it easier to create apps using Twitter Bootstrap}
  gem.email = "karen.e.lundgren@gmail.com"
  gem.authors = ["Karen Lundgren"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
