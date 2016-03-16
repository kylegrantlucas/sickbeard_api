require 'takeout'

module SickbeardApi
  class Client
    attr_accessor :client
    

    def initialize(options={})
      path = "/#{"#{options[:proxy_path]}/" if options[:proxy_path]}api/#{options[:api_key]}/"
      schemas = {get: {root: path}}
      self.client = Takeout::Client.new(uri: options[:uri], port: options[:port], schemas: schemas)
      self.setup_endpoints
      self.client
    end

    def setup_endpoints
      sickbeard = self.client.get_root(cmd:'sb').body
      
      sickbeard["data"]["api_commands"].each do |api_command|
        parsed_method_name = api_command.split('.').join('_')
        self.define_singleton_method(parsed_method_name) do |options={}|
          self.client.get_root({cmd: api_command}.merge(options))
        end
      end
    end
    
    def list_methods
      self.methods - Object.methods
    end
  end
end