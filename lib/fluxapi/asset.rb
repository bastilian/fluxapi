class Fluxiom::Asset < Fluxiom
  def initialize(data)
    data.each do |k, v|
      self.instance_variable_set("@#{k}", v)
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})
    end
  end
  def download(path_to_file)
    session = Net::HTTP.new(self.class.base_uri.gsub('https://', ''), 443)
    session.use_ssl = true
    session.start {|http|
      req = Net::HTTP::Get.new("/api/assets/download/#{self.id}")
      req.basic_auth self.class.default_options[:basic_auth][:username], self.class.default_options[:basic_auth][:password]
      resp = http.request(req)
      open(File.join(path_to_file, self.filename), 'wb') do |file|
        file.write(resp.body)
      end
    }
  end
end