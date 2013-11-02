module Fluxiom
  class Assets < Base
    include Enumerable

    def initialize(client)
      @assets = []
      client.class.get('/api/assets.xml')['documents'].each do |v|
        @assets << Fluxiom::Asset.new(client, v)
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
end
