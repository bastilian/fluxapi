module Fluxiom
  class Account
    def initialize(client, options = {})
      client.class.get('/api/account.xml')['account'].each do |k, v|
        self.instance_variable_set("@#{k}", v)
        self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
      end
    end

    def assets
      Fluxiom::Assets.new
    end

    def has_branding?
      self.branding == 'active'
    end
  end
end
