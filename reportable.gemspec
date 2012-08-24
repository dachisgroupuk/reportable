# -*- encoding: utf-8 -*-

pkg_files = [
  'README.md',
  'HISTORY.md',
  'Rakefile',
  'MIT-LICENSE'
]
pkg_files += Dir['generators/**/*']
pkg_files += Dir['lib/**/*.rb']
pkg_files += Dir['rails/**/*.rb']
pkg_files += Dir['spec/**/*.{rb,yml,opts}']

Gem::Specification.new do |s|

  s.name    = %q{reportable}
  s.version = '1.1.2.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to?(:required_rubygems_version=)
  s.authors                   = ['Marco Otte-Witte', 'Martin Kavalar', 'Alex Stubbs']
  s.date                      = %q{2012-08-24}
  s.email                     = ['reportable@saulabs.com', 'alex@alex-s.co.uk']
  s.files                     = pkg_files
  s.homepage                  = %q{https://github.com/headshift/reportable}
  s.require_path              = 'lib'
  s.rubygems_version          = %q{1.3.0}
  s.has_rdoc                  = false
  s.summary                   = %q{Easy report generation for Ruby on Rails}
  s.description               = %q{Reportable allows for easy report generation from ActiveRecord models by the addition of the reportable method.}

  if s.respond_to?(:specification_version) then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ['>= 2.0.0'])
      s.add_runtime_dependency(%q<activesupport>, ['>= 2.0.0'])
    else
      s.add_dependency(%q<activerecord>, ['>= 2.0.0'])
      s.add_dependency(%q<activesupport>, ['>= 2.0.0'])
    end
  else
    s.add_dependency(%q<activerecord>, ['>= 2.0'])
    s.add_dependency(%q<activesupport>, ['>= 2.0.0'])
  end

end
