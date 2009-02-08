class Fluxiom::Users < Fluxiom
  include Enumerable
  def initialize
    @users = []
    self.class.call('/api/tags.xml')['tags'].each do |v|
      @users << Fluxiom::Tag.new(v)
    end
  end
  def each
    @users.each {|pt| yield pt} 
  end
end