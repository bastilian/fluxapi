class Fluxiom::Asset < Fluxiom
  def initialize(data)
    data.each do |k, v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
      self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})
    end
  end
  
  def tag(t)
    res = self.class.post_call("/api/assets/#{self.id}/tag", :body => {:tags => t.api_name})
    self.tags = self.tags.to_s + ' ' + t.api_name
  end
  
  def download(path_to_file)
    session = Net::HTTP.new(@@base_url.gsub('https://', ''), 443)
    session.use_ssl = true
    session.start {|http|
      req = Net::HTTP::Get.new("/api/assets/#{self.id}/download")
      req.basic_auth @@user, @@password
      resp = http.request(req)
      open(File.join(path_to_file, self.filename), 'wb') do |file|
        file.write(resp.body)
      end
    }
  end
end