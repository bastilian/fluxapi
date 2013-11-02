module Fluxiom
  class Users < Endpoint
    include Enumerable

    def initialize(client)
      super
      @users = []
      client.class.get('/api/users.xml')['users'].each do |v|
        @users << Fluxiom::User.new(v)
      end
    end

    def each
      @users.each {|pt| yield pt} 
    end
  end
end
