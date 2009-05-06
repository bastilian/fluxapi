require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'echoe'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = false
end

Echoe.new('fluxapi', '0.5.1') do |p|
  p.description    = "A fluxiom api wrapper for ruby"
  p.url            = "http://fluxapi.rubyforge.org"
  p.author         = "Sebastian Gräßl"
  p.email          = "sebastian.graessl@gmail.com"
  p.project = "fluxapi"
end
