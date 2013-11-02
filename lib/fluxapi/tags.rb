module Fluxiom
  class Tags < Endpoint
    include Enumerable

    def initialize(client)
      super(client)
      @tags = []
      client.class.get('/api/tags.xml')['tags'].each do |v|
        @tags << Fluxiom::Tag.new(v)
      end
    end

    def each
      @tags.each {|pt| yield pt} 
    end

    def first
      @tags.first
    end
  end
end

