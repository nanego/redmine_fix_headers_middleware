require 'redmine'

ActiveSupport::Reloader.to_prepare do
  require_dependency 'redmine_fix/fix_redmine_headers_middleware'
end

Redmine::Plugin.register :redmine_fix_headers_middleware do
  name 'Redmine Fix Headers Middleware plugin'
  description 'This plugin is a private, specific plugin for my work'
  url 'https://github.com/nanego/redmine_fix_headers_middleware'
  author 'Vincent ROBERT'
  author_url 'mailto:contact@vincent-robert.com'
  requires_redmine :version_or_higher => '4.0.0'
  version '1.0'
end
