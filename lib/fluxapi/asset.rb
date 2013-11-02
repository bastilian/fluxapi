module Fluxiom
  class Asset < Endpoint
    def initialize(client, data)
      super(client)
      data.each do |k, v|
        self.instance_variable_set("@#{k}", v)
        self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
        self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})
      end
    end

    def tag(t)
      res = client.class.post("/api/assets/#{self.id}/tag", :body => {:tags => t.api_name})
      self.tags = self.tags.to_s + ' ' + t.api_name
    end

    def download(path_to_file)
      session = Net::HTTP.new(client.base_url.gsub('https://', ''), 443)
      session.use_ssl = true
      session.start {|http|
        req = Net::HTTP::Get.new("/api/assets/#{self.id}/download")
        req.basic_auth client.username, client.password
        resp = http.request(req)
        open(File.join(path_to_file, self.filename), 'wb') do |file|
          file.write(resp.body)
        end
      }
    end
  end
end
