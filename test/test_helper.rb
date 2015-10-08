require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'rubygems'
require 'rubygems_plugin'
require 'bundler/setup'

require 'test/unit'
require 'fileutils'
require 'pathname'
require 'bundler/setup'
require 'test_declarative'
require 'test/unit/testcase'
require 'test/unit'
require 'mocha/setup'

# For code coverage, must be required before all application / gem / library code.
if ENV['COVERAGE'] == 'true'
  require 'coveralls'
  Coveralls.wear!
end

class Test::Unit::TestCase

end
