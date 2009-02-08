class Fluxiom
  include HTTParty
  format :xml
  def initialize(sub, u, p)
    self.class.base_uri sub + '.fluxiom.com'
    self.class.basic_auth u, p
  end
  def self.call(url)
    get(url)
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
end