$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require "net/http"

require 'bowtie_start'
require 'bowtie_start/version'

def valid_url?(url)
    url = URI.parse(url)
    req = Net::HTTP.new(url.host, url.port); req.use_ssl = true
    res = req.request_head(url.path)
    case res.code
    when "200"
      return true
    else
      return false
    end
end

