require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

Dir[File.expand_path('../**/*_test.rb', __FILE__)].each do |filename|
  require filename
end
