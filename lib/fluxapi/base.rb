module Fluxiom
  class Base
    include HTTParty
    format :xml
    attr_accessor :base_url
    def initialize(sub, u, p)
      @@base_url = 'https://'+ sub + '.fluxiom.com'
      @@user, @@password = u, p
    end
    def self.call(url)
      base_uri @@base_url
      basic_auth @@user, @@password
      get(@@base_url + url)
    end
    def self.post_call(url, post_data)
      base_uri @@base_url
      basic_auth @@user, @@password
      post(@@base_url + url, post_data)
    end
    def account
      Fluxiom::Account.new
    end
    def assets
      Fluxiom::Assets.new
    end
    def users
      Fluxiom::Users.new
    end
    def tags
      Fluxiom::Tags.new
    end
  end
end
