# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: bootstrap_leather 0.10.14 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap_leather".freeze
  s.version = "0.10.14".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karen Lundgren".freeze]
  s.date = "2025-01-02"
  s.description = "BootstrapLeather is a collection of view helpers and scaffold generators that makes it easier to create apps using Twitter Bootstrap".freeze
  s.email = "karen.e.lundgren@gmail.com".freeze
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".rspec",
    ".rubocop.yml",
    ".rubocop_todo.yml",
    ".ruby-gemset",
    ".ruby-version",
    ".travis.yml",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/helpers/bootstrap_leather/alerts_helper.rb",
    "app/helpers/bootstrap_leather/application_helper.rb",
    "app/helpers/bootstrap_leather/badges_helper.rb",
    "app/helpers/bootstrap_leather/carousels_helper.rb",
    "app/helpers/bootstrap_leather/foot_helper.rb",
    "app/helpers/bootstrap_leather/grid_helper.rb",
    "app/helpers/bootstrap_leather/head_helper.rb",
    "app/helpers/bootstrap_leather/hero_unit_helper.rb",
    "app/helpers/bootstrap_leather/icons_helper.rb",
    "app/helpers/bootstrap_leather/modals_helper.rb",
    "app/helpers/bootstrap_leather/navigation_helper.rb",
    "app/helpers/bootstrap_leather/tabs_helper.rb",
    "app/helpers/bootstrap_leather/thumbnails_helper.rb",
    "app/helpers/bootstrap_leather/typography_helper.rb",
    "app/helpers/bootstrap_leather/widgets_helper.rb",
    "app/views/bootstrap_leather/alerts/_alert.html.haml",
    "app/views/bootstrap_leather/alerts/_alert_flash_messages.html.haml",
    "app/views/bootstrap_leather/badges/_badge.html.haml",
    "app/views/bootstrap_leather/badges/_badge_to.html.haml",
    "app/views/bootstrap_leather/carousels/_carousel.html.haml",
    "app/views/bootstrap_leather/carousels/_carousel_with_thumbnails.html.haml",
    "app/views/bootstrap_leather/foot/_footer_javascript.html.haml",
    "app/views/bootstrap_leather/head/_head_css.html.haml",
    "app/views/bootstrap_leather/hero_unit/_hero_unit.html.haml",
    "app/views/bootstrap_leather/icons/_icon.html.haml",
    "app/views/bootstrap_leather/icons/_icon_button_to.html.haml",
    "app/views/bootstrap_leather/icons/_icon_link_to.html.haml",
    "app/views/bootstrap_leather/modals/_modal.html.haml",
    "app/views/bootstrap_leather/navigation/_dropdown_nav_item.html.haml",
    "app/views/bootstrap_leather/navigation/_hamburger_menu.html.haml",
    "app/views/bootstrap_leather/navigation/_logo_and_title.html.haml",
    "app/views/bootstrap_leather/navigation/_nav_divider.html.haml",
    "app/views/bootstrap_leather/navigation/_nav_heading.html.haml",
    "app/views/bootstrap_leather/navigation/_nav_item.html.haml",
    "app/views/bootstrap_leather/navigation/_nav_list.html.haml",
    "app/views/bootstrap_leather/navigation/_navbar.html.haml",
    "app/views/bootstrap_leather/navigation/_navbar_contents.html.haml",
    "app/views/bootstrap_leather/tabs/_tabs.html.haml",
    "app/views/bootstrap_leather/thumbnails/_thumbnail.html.haml",
    "app/views/bootstrap_leather/typography/_dl.html.haml",
    "app/views/bootstrap_leather/typography/_page_header.html.haml",
    "app/views/bootstrap_leather/widgets/_widgets.html.haml",
    "bootstrap_leather.gemspec",
    "config/locales/en.yml",
    "lib/bootstrap_leather.rb",
    "lib/bootstrap_leather/configuration.rb",
    "lib/bootstrap_leather/engine.rb",
    "lib/bootstrap_leather/localization.rb",
    "lib/bootstrap_leather/version.rb",
    "lib/generators/bootstrap_leather/install/install_generator.rb",
    "lib/generators/bootstrap_leather/install/templates/initializer.rb",
    "lib/generators/bootstrap_leather/utils.rb",
    "lib/templates/erb/scaffold/_form.html.erb",
    "lib/templates/erb/scaffold/edit.html.erb",
    "lib/templates/erb/scaffold/index.html.erb",
    "lib/templates/erb/scaffold/new.html.erb",
    "lib/templates/erb/scaffold/show.html.erb",
    "lib/templates/haml/scaffold/_form.html.haml",
    "lib/templates/haml/scaffold/edit.html.haml",
    "lib/templates/haml/scaffold/index.html.haml",
    "lib/templates/haml/scaffold/new.html.haml",
    "lib/templates/haml/scaffold/show.html.haml",
    "spec/dummy/Rakefile",
    "spec/dummy/app/assets/config/manifest.js",
    "spec/dummy/app/assets/images/.keep",
    "spec/dummy/app/assets/javascripts/application.js",
    "spec/dummy/app/assets/stylesheets/application.scss",
    "spec/dummy/app/assets/stylesheets/bootstrap-everything.scss",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/controllers/concerns/.keep",
    "spec/dummy/app/controllers/doo_dads_controller.rb",
    "spec/dummy/app/controllers/erbits_controller.rb",
    "spec/dummy/app/controllers/whatzits_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/mailers/application_mailer.rb",
    "spec/dummy/app/models/application_record.rb",
    "spec/dummy/app/models/concerns/.keep",
    "spec/dummy/app/models/doo_dad.rb",
    "spec/dummy/app/models/erbit.rb",
    "spec/dummy/app/models/whatzit.rb",
    "spec/dummy/app/views/doo_dads/_form.html.haml",
    "spec/dummy/app/views/doo_dads/edit.html.haml",
    "spec/dummy/app/views/doo_dads/index.html.haml",
    "spec/dummy/app/views/doo_dads/new.html.haml",
    "spec/dummy/app/views/doo_dads/show.html.haml",
    "spec/dummy/app/views/erbits/_form.html.erb",
    "spec/dummy/app/views/erbits/edit.html.erb",
    "spec/dummy/app/views/erbits/index.html.erb",
    "spec/dummy/app/views/erbits/new.html.erb",
    "spec/dummy/app/views/erbits/show.html.erb",
    "spec/dummy/app/views/layouts/application.html.haml",
    "spec/dummy/app/views/pages/index.html.haml",
    "spec/dummy/app/views/pages/style_guide.html.haml",
    "spec/dummy/app/views/whatzits/_form.html.haml",
    "spec/dummy/app/views/whatzits/edit.html.haml",
    "spec/dummy/app/views/whatzits/index.html.haml",
    "spec/dummy/app/views/whatzits/new.html.haml",
    "spec/dummy/app/views/whatzits/show.html.haml",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/bin/setup",
    "spec/dummy/bin/update",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/cable.yml",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/application_controller_renderer.rb",
    "spec/dummy/config/initializers/assets.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/bootstrap_leather.rb",
    "spec/dummy/config/initializers/cookies_serializer.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/high_voltage.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/new_framework_defaults.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/puma.rb",
    "spec/dummy/config/routes.rb",
    "spec/dummy/config/secrets.yml",
    "spec/dummy/config/spring.rb",
    "spec/dummy/db/migrate/20170407151055_create_doo_dads.rb",
    "spec/dummy/db/migrate/20170408145839_create_whatzits.rb",
    "spec/dummy/db/migrate/20170408161201_create_erbits.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/seeds.rb",
    "spec/dummy/db/test.sqlite3",
    "spec/factories/doo_dad.rb",
    "spec/factories/erbit.rb",
    "spec/factories/whatzit.rb",
    "spec/helpers/bootstrap_leather/alerts_helper_spec.rb",
    "spec/helpers/bootstrap_leather/badges_helper_spec.rb",
    "spec/helpers/bootstrap_leather/carousels_helper_spec.rb",
    "spec/helpers/bootstrap_leather/foot_helper_spec.rb",
    "spec/helpers/bootstrap_leather/grid_helper_spec.rb",
    "spec/helpers/bootstrap_leather/head_helper_spec.rb",
    "spec/helpers/bootstrap_leather/hero_unit_helper_spec.rb",
    "spec/helpers/bootstrap_leather/icon_helper_spec.rb",
    "spec/helpers/bootstrap_leather/modals_helper_spec.rb",
    "spec/helpers/bootstrap_leather/navigation_helper_spec.rb",
    "spec/helpers/bootstrap_leather/tabs_helper_spec.rb",
    "spec/helpers/bootstrap_leather/thumbnails_helper_spec.rb",
    "spec/helpers/bootstrap_leather/typography_helper_spec.rb",
    "spec/helpers/bootstrap_leather/widgets_helper_spec.rb",
    "spec/rails_helper.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://www.gemvein.com/museum/cases/bootstrap_leather".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.17".freeze
  s.summary = "BootstrapLeather helps create apps using Twitter Bootstrap".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rails>.freeze, [">= 7".freeze, "< 8".freeze])
  s.add_runtime_dependency(%q<rails-i18n>.freeze, [">= 7".freeze, "< 8".freeze])
  s.add_runtime_dependency(%q<haml>.freeze, [">= 5".freeze, "< 6".freeze])
  s.add_runtime_dependency(%q<jquery-rails>.freeze, ["~> 4".freeze])
  s.add_runtime_dependency(%q<bootstrap_form>.freeze, [">= 4".freeze, "< 6".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 2".freeze, "< 3".freeze])
  s.add_development_dependency(%q<juwelier>.freeze, ["~> 2".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 3.5.0".freeze, "< 4".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, [">= 0.48".freeze, "< 1".freeze])
  s.add_development_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<byebug>.freeze, [">= 9".freeze, "< 12".freeze])
  s.add_development_dependency(%q<factory_bot>.freeze, [">= 4".freeze, "< 6".freeze])
  s.add_development_dependency(%q<faker>.freeze, [">= 1.4".freeze, "< 3".freeze])
  s.add_development_dependency(%q<high_voltage>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, [">= 1".freeze, "< 2".freeze])
  s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.5".freeze])
  s.add_development_dependency(%q<seedbank>.freeze, ["~> 0.3".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3".freeze])
end

