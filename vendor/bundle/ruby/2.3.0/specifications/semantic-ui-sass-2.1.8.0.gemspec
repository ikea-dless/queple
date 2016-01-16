# -*- encoding: utf-8 -*-
# stub: semantic-ui-sass 2.1.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "semantic-ui-sass"
  s.version = "2.1.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["doabit"]
  s.date = "2016-01-14"
  s.description = "Semantic UI, converted to Sass and ready to drop into Rails & Compass."
  s.email = ["doinsist@gmail.com"]
  s.homepage = "http://github.com/doabit/semantic-ui-sass"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Semantic UI, converted to Sass and ready to drop into Rails & Compass."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.2"])
      s.add_development_dependency(%q<sass-rails>, [">= 3.2"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 3.0"])
      s.add_development_dependency(%q<rails>, [">= 3.2.0"])
      s.add_development_dependency(%q<autoprefixer-rails>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sass>, [">= 3.2"])
      s.add_dependency(%q<sass-rails>, [">= 3.2"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 3.0"])
      s.add_dependency(%q<rails>, [">= 3.2.0"])
      s.add_dependency(%q<autoprefixer-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sass>, [">= 3.2"])
    s.add_dependency(%q<sass-rails>, [">= 3.2"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 3.0"])
    s.add_dependency(%q<rails>, [">= 3.2.0"])
    s.add_dependency(%q<autoprefixer-rails>, [">= 0"])
  end
end
