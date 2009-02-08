class Fluxiom::Tag < Fluxiom
  def initialize(data)
    data.each do |k, v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
      self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})
    end
  end 
end