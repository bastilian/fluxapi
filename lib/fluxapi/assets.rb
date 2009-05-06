class Fluxiom::Assets < Fluxiom
  include Enumerable
  def initialize
    @assets = []
    self.class.call('/api/assets.xml')['documents'].each do |v|
      @assets << Fluxiom::Asset.new(v)
    end
  end
  def each
    @assets.each {|pt| yield pt} 
  end
  def first
    @assets.first
  end
  def find(id)
    @assets.find {|a| a.id == id }
  end
end