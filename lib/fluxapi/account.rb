class Fluxiom::Account < Fluxiom
  def initialize(options = {})
    self.class.call('/api/account.xml')['account'].each do |k, v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
      self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})
    end
  end
  def assets
    Fluxiom::Assets.new
  end
end