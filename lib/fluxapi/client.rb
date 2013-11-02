require 'httparty'

module Fluxiom
  class Client
    include HTTParty
    format :xml

    attr_accessor :base_url,
                  :username,
                  :password

    def initialize(subdomain, username, password)
      self.base_url = 'https://'+ subdomain + '.fluxiom.com'
      self.class.base_uri base_url
      self.class.basic_auth username, password
      self.username, self.password = username, password
    end

  end
end