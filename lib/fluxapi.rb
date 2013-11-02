require 'httparty'
require 'fluxapi/base'
require 'fluxapi/account'
require 'fluxapi/asset'
require 'fluxapi/assets'
require 'fluxapi/user'
require 'fluxapi/users'
require 'fluxapi/tag'
require 'fluxapi/tags'

module Fluxiom

  class << self
    def new(subdomain, username, password)
      Fluxiom::Base.new(subdomain, username, password)
    end
  end

end
