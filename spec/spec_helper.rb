require_relative '../app/config'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.order = 'random'
  config.filter_run_excluding broken: true
end
