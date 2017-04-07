# frozen_string_literal: true

module BootstrapLeather
  # Hero Unit, i.e. Jumbotron
  module HeroUnitHelper
    def add_hero_unit(&block)
      content_for :hero_unit, &block
    end

    def render_hero_unit
      render(partial: 'bootstrap_leather/hero_unit/hero_unit')
    end
  end
end
