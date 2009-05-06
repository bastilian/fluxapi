class Fluxiom::User < Fluxiom
  def initialize(data)
    data.each do |k, v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
    end
  end 
end