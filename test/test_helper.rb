require 'rubygems'
require 'test/unit'
require 'fakeweb'
require "mocha"

FakeWeb.allow_net_connect = false

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require "fluxapi"

def fixture(filename)
  return '' if filename == ''
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  File.read(file_path)
end

def stub_get(url, file)
  FakeWeb.register_uri(:get, "https://user:password@account.fluxiom.com:443#{url}", :string => fixture(file))
end

def register_requests
  Dir.new(File.join(File.dirname(__FILE__),'fixtures')).each do |file|
    next if file == '.' || file == '..' || !file.include?('.xml')
    stub_get('/api/' + file, file)
  end
  FakeWeb.register_uri(:get, "http://account:password@account.fluxiom.com:443/api/assets/download/182535", :response => File.expand_path(File.dirname(__FILE__) + '/fixtures/download_response'))
end

def set_account
  @fluxiom = Fluxiom.new('account', 'user', 'password')
  register_requests
end