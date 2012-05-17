require 'watir-webdriver'
require 'minitest/autorun'

# Load the test helpers
require "#{File.dirname(__FILE__)}/helpers/test_helper"
require "#{File.dirname(__FILE__)}/helpers/test_helper_data"

# Require all of the functional tests
Dir["#{File.dirname(__FILE__)}/**/*_tests.rb"].each {|file| require file }

class TestRunner < MiniTest::Unit::TestCase
  # Mixin the helper methods
  include TestHelperMethods
  include TestHelperData

  # Mixin the functional tests modules
  include CraftyDevilWebsiteTests
end