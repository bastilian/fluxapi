require "fileutils"
require 'rubygems'
require 'test/unit'
require 'fakeweb'
require "mocha/setup"

FakeWeb.allow_net_connect = false

require "fluxapi"

def fixture(filename)
  return '' if filename == ''
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  File.read(file_path)
end

def stub_get(url, file)
  FakeWeb.register_uri(:get, "https://user:password@account.fluxiom.com:443#{url}", :body => fixture(file))
end

def register_requests
  Dir.new(File.join(File.dirname(__FILE__),'fixtures')).each do |file|
    next if file == '.' || file == '..' || !file.include?('.xml')
    stub_get('/api/' + file, file)
  end
  FakeWeb.register_uri(:get, "https://user:password@account.fluxiom.com:443/api/assets/182535/download", :response => File.expand_path(File.dirname(__FILE__) + '/fixtures/download_response'))
  FakeWeb.register_uri(:post, "https://user:password@account.fluxiom.com:443/api/assets/182535/tag", :body => "", :status => [201, "Created"])
end

def set_account
  @fluxiom = Fluxiom.new('account', 'user', 'password')
  register_requests
end