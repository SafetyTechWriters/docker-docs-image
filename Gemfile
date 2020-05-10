source 'https://rubygems.org'

gem 'jekyll', '~> 4.0'

# Jekyll plugins
group :jekyll_plugins do
   gem 'jekyll-feed'
   gem 'jekyll-sitemap'
   gem 'jekyll-algolia'
   gem 'jekyll-redirect-from'
   gem 'jekyll-last-modified-at'
end

# Testing gems
group :test do
  gem 'html-proofer'
  gem 'rake'
  gem 'typhoeus'
  gem 'rspec'
  gem 'rspec_junit_formatter'
end

# Gem version dependencies to fix issues with CI
gem 'json'
gem 'nokogiri'
gem 'addressable'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Avoid polling for changes on Windows
gem 'wdm', platforms: [:mingw, :mswin, :x64_mingw, :jruby]