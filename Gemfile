source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rack-cors'

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# image upload
gem 'carrierwave'
gem 'mini_magick'
# image upload amazon
gem 'fog'
gem 'active_model_serializers'
group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '>= 3.5.0'
  gem 'factory_girl_rails'
end
group :test do
  gem 'shoulda-matchers', '~> 3.1'
end

# user registration
gem 'devise_token_auth'
gem 'omniauth'
