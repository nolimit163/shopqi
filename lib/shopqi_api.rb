$:.unshift File.dirname(__FILE__)

require 'active_resource'
require 'active_support/core_ext/class/attribute_accessors'
require 'digest/md5'
require 'base64'
require 'active_resource/connection_ext'
require 'active_resource/detailed_log_subscriber'
require 'shopqi_api/limits'
require 'shopqi_api/json_format'
require 'active_resource/json_errors'
require 'active_resource/disable_prefix_check'

module ShopqiAPI
  include Limits
end

require 'shopqi_api/events'
require 'shopqi_api/metafields'
require 'shopqi_api/countable'
require 'shopqi_api/resources'
require 'shopqi_api/session'
