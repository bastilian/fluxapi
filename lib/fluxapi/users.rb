class Fluxiom::Users < Fluxiom
  include Enumerable
  def initialize
    @users = []
    self.class.call('/api/users.xml')['users'].each do |v|
      @users << Fluxiom::User.new(v)
    end
  end
  def each
    @users.each {|pt| yield pt} 
  end
end