module Fluxiom
  class Tags < Base
    include Enumerable
    def initialize
      @tags = []
      self.class.call('/api/tags.xml')['tags'].each do |v|
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

