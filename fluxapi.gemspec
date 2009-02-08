Gem::Specification.new do |s|
  s.name = %q{fluxapi}
  s.version = "0.5.0"
 
  s.authors = ["Sebastian Gräßl"]
  s.date = %q{2009-02-08}
  s.description = %q{Fluxiom API wrapper}
  s.email = %q{sebastian.graessl@gmail.com}
  s.extra_rdoc_files = ["README.txt"]
  s.summary = %q{Fluxiom API wrapper}
  s.files = ['History.txt', 'README.txt', 'lib/fluxapi.rb', 'lib/fluxapi/base.rb', 'lib/fluxapi/asset.rb', 'lib/fluxapi/assets.rb', 'lib/fluxapi/user.rb', 'lib/fluxapi/users.rb','lib/fluxapi/account.rb']
  s.add_dependency('httparty', '>= 0.3.0')

end