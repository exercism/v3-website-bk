ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'mocha/minitest'
require 'timecop'

OmniAuth.config.test_mode = true

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
end

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
end
