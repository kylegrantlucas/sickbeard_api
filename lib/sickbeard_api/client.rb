require 'takeout'
require 'sickbeard_api/shows'
require 'sickbeard_api/episodes'
require 'sickbeard_api/history'

module Sickbeard
  class Client
    include SickbeardApi::Shows
    include SickbeardApi::Epidodes
    include SickbeardApi::history
    include SickbeardApi::Logs
    attr_accessor :client
    

    def initialize(options={})
      api_key = options[:api_key]
      self.client = Takeout::Client.new(uri: options[:uri], port: options[:port], schemas: schemas)
    end

    def sickbeard
    end

    def search_tvdb(nil:nil,tvdbid:nil,lang:nil)
    end
  end
end