source "https://rubygems.org"
ruby RUBY_VERSION

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem "jekyll", "~> 3.9"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
# gem "minima", "~> 2.0"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
   gem "kramdown-parser-gfm", "~> 1.1"
   gem 'listen'
   gem "jekyll-feed", "~> 0.6"
   gem 'jekyll-paginate', '~> 1.1'
   gem 'jekyll-seo-tag'
   gem 'jekyll-gist'
   gem 'nokogiri', '~> 1.6'
   gem 'jekyll-livereload'
   gem 'jekyll-avatar'
   gem 'jekyll-redirect-from'
   gem "jekyll-sitemap"
   gem 'jekyll-algolia', '~> 1.0'
   gem 'jekyll-last-modified-at'
   gem 'html-proofer'
   gem 'ffi'
   gem 'jekyll-glossary_tooltip', '~> 1.3', '>= 1.3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Windows install wdm
gem 'wdm', '~> 0.1.0' if Gem.win_platform?

# frozen_string_literal: true

# Put require=false on gem's that we don't need to import in code (cli exec only)

source "https://rubygems.org"

# Development dependencies
# Should rather be here than in the .gemspec
# Reference: https://github.com/rubygems/bundler/pull/7222
# However there's an argument for using gemspec too: https://bundler.io/guides/creating_gem.html#testing-our-gem
group :development, :test do
  gem "appraisal", "~> 2.4", require: false
  gem "gem-release", "~> 2.0", require: false
  gem "rake", "~> 13.0", require: false
  gem "solargraph", require: false
  gem "travis", "~> 1.0", require: false
end

group :test do
  gem "rspec", "~> 3.0"
  gem "rubocop", "~> 1.18", require: false
  gem "rubocop-rake", "~> 0.6", require: false
  gem "rubocop-rspec", "~> 2.4", require: false
  gem "simplecov", "~> 0.21"
end
