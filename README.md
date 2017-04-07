# BootstrapLeather
Updated for Rails 5

[![Gem Version](https://badge.fury.io/rb/bootstrap_leather.svg)](https://badge.fury.io/rb/bootstrap_leather)
[![Build Status](https://travis-ci.org/gemvein/bootstrap_leather.svg?branch=master)](https://travis-ci.org/gemvein/bootstrap_leather)
[![Coverage Status](https://coveralls.io/repos/github/gemvein/bootstrap_leather/badge.svg)](https://coveralls.io/github/gemvein/bootstrap_leather)

BootstrapLeather is a collection of view helpers that makes it easier to create apps using Twitter Bootstrap.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bootstrap_leather'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install bootstrap_leather
```
You will need to install bootstrap as a separate gem or include the css yourself.

To install a default initializer:

```bash
$ rails g bootstrap_leather:install
```

## Usage

Give your views access to the helpers with:

```ruby
class ApplicationController < ActionController::Base
  helper BootstrapLeather::ApplicationHelper
end
```

### SEO tools for head and body: Title, Keywords, Description

In your view, assuming your model implements the given methods on the Item model (otherwise, omit):

```haml
- add_title @item.title
- add_keywords @item.keywords
- add_description @item.description
- add_head_css do
  = @item.css
- add_footer_javascript do
  = @item.javascript
```

In your layout:
```haml
%html
  %head
    = render_title          # For the title tag, including SEO content
    = render_keywords       # Defaults to what you put in the config file
    = render_description    # Can be hooked up within a mountable rails engine, too.
    = responsive_meta_tag   # If you're using the responsive features, you need this in your head
  
    <...>
  
    = render_head_css
  %body
    <...>
  
    .container
      = render_page_header         # For the h1 tag containing the title and subtitle
      = yield
  
      <...>
  
    %footer
    = render_footer_javascript
```

### Hero Units

To tell a view to add a hero unit, do:

```haml
- add_hero_unit do
  %h1 This is a Hero Unit.
  %p This is its description paragraph, which isn't very clever but at least it's not lorem ipsum.
```
Then put one of these somewhere in your layout:

```haml
= render_hero_unit
```

### Alerts

To get all alerts, do:

```haml
= alert_flash_messages
``` 

To create one alert, do:

```haml
= alert 'info', 'The message you want to alert with goes here.'
```

### Widgets

To add a widget in any of your views:

```haml
- add_widget do
  %h3 A widget is...
  %p  Not a bootstrap concept, but useful all the same.
```

To render the ones you have saved up:
```haml
= render_widgets 'md', 3
```

### Modals
```haml
= modal 'css-id', 'Title of the modal here.' do
  %p Lorem ipsum, baby.
```

### Badges and Labels
```haml
= badge '25'
= label 'unread'
```

### Icons
```haml
= icon 'check'
= icon_link_to 'check', 'Link Text', link_path
= icon_button_to 'success', 'check', 'Link Text', link_path
```

### Navbars

:container_mode is optional and defaults to :none.  Can be one of: [:none, :inside, :outside]

For a wide navbar, try this:

```haml
= navbar :container_mode => :outside, :class => 'navbar-inverse' do
  = nav_list do
    = dropdown_nav_item 'Lorem', '#' do
      = nav_item 'Ipsum', '#'
      = nav_item 'Dolor', '#'
      = nav_item 'Sit', '#'
    = nav_item 'Ipsum', '#'
    = nav_item 'Dolor', '#'
    = nav_item 'Sit', '#'
  = nav_list :class => 'navbar-right' do
    = nav_item 'Amet', '#', :data => {:toggle => 'modal', :target => '#modal'}
```
    

### Nav List
```haml
= nav_list :class => 'nav-pills' do
  = nav_item 'Ipsum', '#'
  = nav_item 'Dolor', '#'
  = nav_item 'Sit', '#'
```

### Tabs

First, add them all:

```haml
- add_tab 'First Tab', 'first-tab' do
  %p Tab contents go inside.
- add_tab 'Second Tab', 'second-tab' do
  %p Tab contents go inside here too.
- add_tab 'Third Tab', 'third-tab' do
  %p Yep, tab contents go inside.
```
      
Then render them.

```haml
= render_tabs 'left'
```

### Carousel

Pass in an id string, items and a block for each slide:

```haml
= carousel 'css-id-for-carousel', @items do |item|
  .carousel-caption
    %h3= item.title
    %p= item.description
  = image_tag item.image.url(:large)
```

### Carousel with Thumbnails

Pass in an id string, items and a block for each slide:
```haml
= carousel_with_thumbnails 'css-id-for-carousel', @items do |item|
  .carousel-caption
    %h3= item.title
    %p= item.description
  = image_tag item.image.url(:large), data: { thumbnail: item.image.url(:thumb) }
```

### Thumbnail

```haml
= thumbnail link_to image_tag(image_url), path
```

### Definition Lists

```haml
= dl hash_of_terms_and_definitions_or_definition_arrays
```

## Great Bootstrap functionality outside the scope of this gem

The following are not covered because there are already so many wonderful resources providing this functionality.

* Bootstrap itself (I use bootstrap-sass, but you can use anything)
    * Consider the possibilities:
        * Any form of Bootstrap for Rails you want.
            * Less
            * Sass
        * A themed bootstrap replacement:
            * Kickstrap
            * Bootswatch
        * A theme generated on the fly:
            * Bootstrap ThemeRoller
            * Bootstrap Magic
* Jquery UI theme for bootstrap (I use jquery-ui-bootstrap-rails-asset)
* Forms (I recommend bootstrap_form)
* Breadcrumb generation (try breadcrumbs_on_rails)

## Contributing
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.


## License

Copyright (c) 2013-2017 [Gem Vein](https://www.gemvein.com/). The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT). See LICENSE.txt for further details.
