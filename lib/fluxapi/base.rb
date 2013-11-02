module Fluxiom
  class Base

    attr_accessor :client

    def initialize(subdomain, username, password)
      self.client = Client.new(subdomain, username, password)
    end

    def account
      Account.new(client)
    end

    def assets
      Assets.new(client)
    end

    def users
      Users.new(client)
    end

    def tags
      Tags.new(client)
    end
  end

  class Endpoint
    attr_accessor :client

    def initialize(client)
      self.client = client
    end
  end

end
