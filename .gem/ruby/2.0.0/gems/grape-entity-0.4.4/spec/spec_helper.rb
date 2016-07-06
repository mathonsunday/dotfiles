$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'support'))

require 'rubygems'
require 'bundler'

Bundler.require :default, :test

require 'pry'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
end
