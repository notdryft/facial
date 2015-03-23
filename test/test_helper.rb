ENV['RAILS_ENV'] ||= 'test'

unless ENV['CODECLIMATE_REPO_TOKEN'].nil?
  require 'codeclimate-test-reporter'

  CodeClimate::TestReporter.start
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  fixtures :all
end
