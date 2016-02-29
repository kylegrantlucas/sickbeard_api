require 'takeout'
require 'sickbeard_api/shows'
require 'sickbeard_api/episodes'
require 'sickbeard_api/history'

module SickbeardApi
  class Client
    include SickbeardApi::Shows
    include SickbeardApi::Episodes
    include SickbeardApi::History
    include SickbeardApi::Logs
    attr_accessor :client
    

    def initialize(options={})
      path = "/#{"#{options[:proxy_path]}/" if options[:proxy_path]}api/#{options[:api_key]}/"
      schemas = {get: {root: path}}
      self.client = Takeout::Client.new(uri: options[:uri], port: options[:port], schemas: schemas)
    end

    def sickbeard
    end

    def search_tvdb(name:nil,tvdbid:nil,lang:nil)
      client.get_root(cmd: 'sb.searchtvdb', name: name, tvdbid: tvdbid, lang: lang)
    end
  end
end