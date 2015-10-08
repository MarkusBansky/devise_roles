# CURRENT FILE :: devise_roles.gemspec
require File.expand_path("../lib/team_page/version", __FILE__)
# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "devise_roles"
  s.summary = "A simple gem for devise user roles manipulation."
  s.description = "Create Roles for devise users and manipulate with them. Useful functions and even more."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"
end
